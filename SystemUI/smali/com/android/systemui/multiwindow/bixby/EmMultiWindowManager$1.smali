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

    invoke-static {v1}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

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
    .locals 33

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v25

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v3, v4}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-set0(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v3, "EmMultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[InterimStateListener] onStateReceived() ruleId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",  stateId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",  params = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "SystemUI_4001"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isExpandedDockedStack()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->swapTasks()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "MultiWindow"

    const-string/jumbo v6, "State"

    const-string/jumbo v7, "yes"

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "Split"

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string/jumbo v3, "EmMultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[InterimStateListener] ruleId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") is done."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v3, "SystemUI_4004"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get1(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Landroid/content/Context;

    move-result-object v32

    check-cast v32, Lcom/android/systemui/SystemUIApplication;

    const-class v3, Lcom/android/systemui/stackdivider/DividerPanel;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningSnapTargetTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v26

    if-eqz v26, :cond_9

    move-object/from16 v0, v26

    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v21

    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    iget-object v3, v3, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    iget-object v3, v3, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mIam:Landroid/app/IActivityManager;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    iget-object v3, v3, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->getFocusedStackId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    :goto_2
    if-eqz v20, :cond_2

    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "EmMultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[InterimStateListener] onStateReceived()  -SystemUI_4004-   orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",  topActivity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",  visible = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-boolean v6, v0, Landroid/app/ActivityManager$StackInfo;->visible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "OtherApp"

    const-string/jumbo v11, "Landscape"

    const-string/jumbo v12, "Mode"

    const-string/jumbo v13, "yes"

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v3, "SystemUI_4005"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v5, "closeAppName"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v5, "closeAppDir"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "directionCH"

    move-object/from16 v0, v22

    invoke-static {v3, v0, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Lcom/samsung/android/sdk/bixby/data/Parameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "packageName"

    move-object/from16 v0, v23

    invoke-static {v3, v0, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Lcom/samsung/android/sdk/bixby/data/Parameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "AppName"

    move-object/from16 v0, v23

    invoke-static {v3, v0, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Lcom/samsung/android/sdk/bixby/data/Parameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static {}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "EmMultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[InterimStateListener] onStateReceived()  -SystemUI_4005-  pCloseAppName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", pCloseAppDir="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", appName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", appDir="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isExpandedDockedStack()Z

    move-result v3

    if-eqz v3, :cond_17

    if-eqz v23, :cond_5

    if-eqz v30, :cond_5

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_5
    if-eqz v22, :cond_6

    if-eqz v28, :cond_6

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "Split"

    const-string/jumbo v11, "CloseWhatApp"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "no"

    const/4 v15, 0x0

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "Split"

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, "MultiWindow_4"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "EmMultiWindowManager"

    const-string/jumbo v5, "[InterimStateListener] ---MultiWindow_4--- "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFocusedTask()Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "OtherApp"

    const-string/jumbo v11, "App"

    const-string/jumbo v12, "Opened"

    const-string/jumbo v13, "yes"

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "EmMultiWindowManager"

    const-string/jumbo v5, "[InterimStateListener] not ExpandedDockedStack"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "Root"

    const-string/jumbo v11, "MultiWindow"

    const-string/jumbo v12, "State"

    const-string/jumbo v13, "no"

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "OtherApp"

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v18

    const-string/jumbo v3, "EmMultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[InterimStateListener] Failed getConfiguration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "OtherApp"

    const-string/jumbo v11, "MultiWindow"

    const-string/jumbo v12, "Disabled"

    const-string/jumbo v13, "yes"

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "OtherApp"

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    if-eqz v17, :cond_c

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/stackdivider/DividerPanel;->isSnapViewActivated()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "OtherApp"

    const-string/jumbo v11, "Snapwindow"

    const-string/jumbo v12, "Enabled"

    const-string/jumbo v13, "yes"

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, v20

    iget-boolean v3, v0, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "OtherApp"

    const-string/jumbo v11, "Recentview"

    const-string/jumbo v12, "Focused"

    const-string/jumbo v13, "yes"

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "OtherApp"

    const-string/jumbo v11, "Homescreen"

    const-string/jumbo v12, "Mode"

    const-string/jumbo v13, "yes"

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    if-eqz v17, :cond_f

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/stackdivider/DividerPanel;->canStartSnapView()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-get2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isExpandedDockedStack()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;-><init>(I)V

    invoke-virtual {v3, v5}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "OtherApp"

    const-string/jumbo v11, "Snapwindow"

    const-string/jumbo v12, "Available"

    const-string/jumbo v13, "yes"

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "OtherApp"

    const-string/jumbo v11, "Snapwindow"

    const-string/jumbo v12, "Available"

    const-string/jumbo v13, "no"

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    if-eqz v17, :cond_10

    const-string/jumbo v3, "fromFullApp"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v3}, Lcom/android/systemui/stackdivider/DividerPanel;->showSnapWindowGuideView(ILjava/lang/String;)V

    goto :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const/4 v5, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-static {v3, v0, v1, v2, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap0(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "AppName"

    move-object/from16 v0, v23

    invoke-static {v3, v0, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Lcom/samsung/android/sdk/bixby/data/Parameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v3, "EmMultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[InterimStateListener] pCloseAppName strSlotValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", nlgResultStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "OtherApp"

    const-string/jumbo v11, "closeAppName"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "yes"

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "OtherApp"

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "Split"

    const-string/jumbo v11, "closeAppName"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "no"

    const/4 v15, 0x0

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "Split"

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, v28

    invoke-static {v3, v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap1(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "directionText"

    move-object/from16 v0, v22

    invoke-static {v3, v0, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Lcom/samsung/android/sdk/bixby/data/Parameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v3, "EmMultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[InterimStateListener] pCloseAppDir strSlotValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", nlgResultStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "OtherApp"

    const-string/jumbo v11, "closeAppDir"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "yes"

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "OtherApp"

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "Split"

    const-string/jumbo v11, "closeAppName"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "no"

    const/4 v15, 0x0

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "Split"

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    if-eqz v23, :cond_18

    if-eqz v30, :cond_18

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "Root"

    const-string/jumbo v11, "CloseWhatApp"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "no"

    const/4 v15, 0x0

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "Root"

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const/4 v5, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-static {v3, v0, v1, v2, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap0(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "AppName"

    move-object/from16 v0, v23

    invoke-static {v3, v0, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap2(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Lcom/samsung/android/sdk/bixby/data/Parameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v3, "EmMultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[InterimStateListener] pCloseAppName strSlotValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", nlgResultStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "Root"

    const-string/jumbo v11, "closeAppName"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "yes"

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "OtherApp"

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "Root"

    const-string/jumbo v11, "closeAppName"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "no"

    const/4 v15, 0x0

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v5, "OtherApp"

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    const-string/jumbo v10, "Root"

    const-string/jumbo v11, "App"

    const-string/jumbo v12, "Opened"

    const-string/jumbo v13, "no"

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap4(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager$1;->this$0:Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    invoke-static {v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->-wrap3(Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->setScreenState(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
