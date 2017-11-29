.class Lcom/samsung/android/settings/notification/SoundModeSettings$3;
.super Ljava/lang/Object;
.source "SoundModeSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SoundModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v14, "SoundMode"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v8, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b150b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v14, "Mute"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0baf

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_0
    :goto_0
    const/4 v14, -0x1

    if-ne v8, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundMode"

    const-string/jumbo v16, "Match"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundModeSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v14, "Vibrate"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0bae

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_3
    const-string/jumbo v14, "Sound"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v14

    if-ne v8, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundMode"

    const-string/jumbo v16, "AlreadySelected"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundMode"

    invoke-virtual {v14, v15, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundModeSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundMode"

    const-string/jumbo v16, "AlreadySelected"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundMode"

    invoke-virtual {v14, v15, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundModeSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v14, "TemporaryMuteOn"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundMode"

    const-string/jumbo v16, "AlreadyMute"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundsModeSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "TemporaryMute"

    const-string/jumbo v16, "AlreadyOn"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundsModeSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "TemporaryMute"

    const-string/jumbo v16, "AlreadyOn"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundsModeSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v14, "TemporaryMuteOff"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundMode"

    const-string/jumbo v16, "AlreadyMute"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundsModeSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "TemporaryMute"

    const-string/jumbo v16, "AlreadyOff"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundsModeSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "TemporaryMute"

    const-string/jumbo v16, "AlreadyOff"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "SoundsModeSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v14, "Mute"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v14, "MuteDuration"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v14, "SoundModeSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "recipientId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    const/4 v6, -0x1

    const/4 v11, -0x1

    :try_start_0
    const-string/jumbo v14, " "

    const-string/jumbo v15, ""

    invoke-virtual {v9, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v14, ","

    const-string/jumbo v15, ""

    invoke-virtual {v9, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v14, "y"

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v14, "y"

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    const-string/jumbo v15, "m"

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string/jumbo v14, "m"

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    const-string/jumbo v15, "d"

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v14, "m"

    invoke-virtual {v9, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    const-string/jumbo v15, "s"

    invoke-virtual {v9, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v14, ""

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    if-nez v13, :cond_11

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_11

    if-nez v1, :cond_11

    const-string/jumbo v14, "d"

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    const-string/jumbo v15, "h"

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v14, "h"

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    const-string/jumbo v15, "m"

    invoke-virtual {v9, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_11
    const-string/jumbo v14, "SoundModeSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "y,"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "m,"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "d,"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "h,"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "m"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v14

    if-nez v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_12

    const/4 v14, -0x1

    if-eq v4, v14, :cond_12

    const/4 v14, -0x1

    if-ne v6, v14, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "MuteDuration"

    const-string/jumbo v16, "Exist"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "Mute"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2

    :cond_13
    if-nez v4, :cond_14

    if-eqz v6, :cond_12

    :cond_14
    if-nez v11, :cond_12

    mul-int/lit8 v5, v4, 0x3c

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v14

    add-int v15, v5, v6

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->setMuteInterval(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap4(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "MuteDuration"

    const-string/jumbo v16, "Exist"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    const-string/jumbo v15, "Mute"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method
