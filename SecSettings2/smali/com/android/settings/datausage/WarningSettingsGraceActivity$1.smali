.class Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;
.super Ljava/lang/Object;
.source "WarningSettingsGraceActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/WarningSettingsGraceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v13

    sget-boolean v8, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->sIsEnable:Z

    const-string/jumbo v14, "DataWarningOn"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    if-nez v8, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarning"

    const-string/jumbo v16, "AlreadyON"

    const-string/jumbo v17, "No"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarning"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get6(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v15

    if-eqz v8, :cond_2

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v15, v14}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v14, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarning"

    const-string/jumbo v16, "AlreadyON"

    const-string/jumbo v17, "Yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarning"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v14, "DataWarningOff"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarning"

    const-string/jumbo v16, "AlreadyOff"

    const-string/jumbo v17, "No"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarning"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get6(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v15

    if-eqz v8, :cond_6

    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v15, v14}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_6
    const/4 v14, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarning"

    const-string/jumbo v16, "AlreadyOff"

    const-string/jumbo v17, "Yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarning"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v14, "SetDataWarningPercent"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    if-nez v8, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "MobileDatalimit"

    const-string/jumbo v16, "AlreadyOff"

    const-string/jumbo v17, "Yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarning"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarningPercent"

    const-string/jumbo v16, "Exist"

    const-string/jumbo v17, "No"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarning"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarningPercent"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    const-string/jumbo v14, "%"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    const-string/jumbo v15, "%"

    invoke-virtual {v10, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v15, v15, -0x28

    invoke-static {v14, v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-set0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;I)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get3(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/SeekBar;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/SeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const/4 v9, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "set_data_limit"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "max"

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v14, "max"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-eqz v14, :cond_b

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "set_data_limit"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    :cond_b
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x42200000    # 40.0f

    add-float/2addr v14, v15

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v14, v15

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    mul-float v3, v14, v15

    new-instance v4, Ljava/text/DecimalFormat;

    const-string/jumbo v14, "0.00"

    invoke-direct {v4, v14}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v14, v3

    invoke-virtual {v4, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v14

    add-int/lit8 v11, v14, 0x28

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get7(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "%"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get4(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d00eb

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get1(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d00eb

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get8(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0b0503

    invoke-virtual/range {v16 .. v17}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarningPercent"

    const-string/jumbo v16, "Already set"

    const-string/jumbo v17, "No"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarning"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    const-string/jumbo v14, "WarningSettingsGraceActivity"

    const-string/jumbo v15, "NumberFormatException in SetDataWarningPercent"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarningPercent"

    const-string/jumbo v16, "Valid"

    const-string/jumbo v17, "No"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarning"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarningPercent"

    const-string/jumbo v16, "Valid"

    const-string/jumbo v17, "No"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "DataWarning"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v14}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :catch_1
    move-exception v5

    :try_start_3
    const-string/jumbo v9, "max"
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3
.end method
