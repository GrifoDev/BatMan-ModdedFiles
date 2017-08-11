.class Lcom/samsung/android/settings/notification/VolumeSettings$3;
.super Landroid/os/Handler;
.source "VolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private doAction(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 15

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    move/from16 v0, p2

    invoke-static {v11, v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->-wrap0(Lcom/samsung/android/settings/notification/VolumeSettings;I)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v10

    if-eqz v10, :cond_1b

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getInitFinish()Z

    move-result v11

    if-eqz v11, :cond_1b

    const-string/jumbo v11, "Level"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "Level"

    const-string/jumbo v13, "Exist"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "VolumeSetting"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get2(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_2
    return-void

    :cond_1
    const-string/jumbo v11, "UpByPercentage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v11

    if-nez v11, :cond_b

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "Level"

    const-string/jumbo v13, "Exist"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "VolumeSetting"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v11, "DownByPercentage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v11

    if-nez v11, :cond_10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "Level"

    const-string/jumbo v13, "Exist"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "VolumeSetting"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v11, "Up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getProgress()I

    move-result v11

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/SeekBar;->getMax()I

    move-result v12

    if-ne v11, v12, :cond_15

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, p2

    const-string/jumbo v13, "AlreadyMax"

    const-string/jumbo v14, "yes"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "VolumeSetting"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v11, "Down"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getProgress()I

    move-result v11

    if-nez v11, :cond_17

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, p2

    const-string/jumbo v13, "AlreadyMin"

    const-string/jumbo v14, "yes"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "VolumeSetting"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v11, "Max"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getProgress()I

    move-result v11

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/SeekBar;->getMax()I

    move-result v12

    if-ne v11, v12, :cond_19

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, p2

    const-string/jumbo v13, "AlreadyMax"

    const-string/jumbo v14, "yes"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "VolumeSetting"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v11, "Min"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getProgress()I

    move-result v11

    if-nez v11, :cond_1a

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, p2

    const-string/jumbo v13, "AlreadyMin"

    const-string/jumbo v14, "yes"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    const-string/jumbo v11, "VolumeSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0()[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, p2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " newValue is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "VolumeSetting"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_7
    :try_start_0
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getMax()I

    move-result v11

    mul-int/2addr v11, v9

    div-int/lit8 v8, v11, 0x64

    if-ltz v9, :cond_8

    const/16 v11, 0x64

    if-le v9, v11, :cond_9

    :cond_8
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "Level"

    const-string/jumbo v13, "Valid"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "Level"

    const-string/jumbo v13, "Valid"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "VolumeSetting"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get2(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_9
    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getProgress()I

    move-result v11

    add-int/lit8 v12, v8, 0x32

    if-gt v11, v12, :cond_a

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getProgress()I

    move-result v11

    add-int/lit8 v12, v8, -0x32

    if-lt v11, v12, :cond_a

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "Level"

    const-string/jumbo v13, "AlreadySet"

    const-string/jumbo v14, "yes"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "Level"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v11, v8, v12, v13}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "Level"

    const-string/jumbo v13, "AlreadySet"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "Level"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    :try_start_1
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    mul-int v11, v5, v9

    div-int/lit8 v8, v11, 0x64

    add-int/2addr v8, v5

    if-lez v9, :cond_c

    const/16 v11, 0x64

    if-le v9, v11, :cond_d

    :cond_c
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "Level"

    const-string/jumbo v13, "Valid"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_1
    move-exception v2

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "Level"

    const-string/jumbo v13, "Valid"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "VolumeSetting"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get2(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_d
    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getMax()I

    move-result v11

    if-ne v5, v11, :cond_e

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, p2

    const-string/jumbo v13, "AlreadyMax"

    const-string/jumbo v14, "yes"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getMax()I

    move-result v11

    if-le v8, v11, :cond_f

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getMax()I

    move-result v8

    :cond_f
    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v11, v8, v12, v13}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, p2

    const-string/jumbo v13, "AlreadyMax"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    :try_start_2
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    mul-int v11, v5, v9

    div-int/lit8 v8, v11, 0x64

    sub-int v8, v5, v8

    if-lez v9, :cond_11

    const/16 v11, 0x64

    if-le v9, v11, :cond_12

    :cond_11
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "Level"

    const-string/jumbo v13, "Valid"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_2
    move-exception v2

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "Level"

    const-string/jumbo v13, "Valid"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "VolumeSetting"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get2(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_12
    if-nez v5, :cond_13

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, p2

    const-string/jumbo v13, "AlreadyMin"

    const-string/jumbo v14, "yes"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_13
    if-gez v8, :cond_14

    const/4 v8, 0x0

    :cond_14
    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v11, v8, v12, v13}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, p2

    const-string/jumbo v13, "AlreadyMin"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_15
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/16 v12, 0x16

    invoke-direct {v3, v11, v12}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v11, 0x1

    const/16 v12, 0x16

    invoke-direct {v4, v11, v12}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getProgress()I

    move-result v11

    const/16 v12, 0x3e8

    if-le v11, v12, :cond_16

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_16
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, p2

    const-string/jumbo v13, "AlreadyMax"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_17
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/16 v12, 0x15

    invoke-direct {v3, v11, v12}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v11, 0x1

    const/16 v12, 0x15

    invoke-direct {v4, v11, v12}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getProgress()I

    move-result v11

    const/16 v12, 0x1f4

    if-ge v11, v12, :cond_18

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_18
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, p2

    const-string/jumbo v13, "AlreadyMin"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_19
    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v11, v7, v12, v13}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, p2

    const-string/jumbo v13, "AlreadyMax"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1a
    invoke-virtual {v10}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, p2

    const-string/jumbo v13, "AlreadyMin"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1b
    iget-object v11, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get2(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v11

    const-wide/16 v12, 0x64

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    if-ltz v2, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    const-string/jumbo v3, "bixby_volume"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/notification/VolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get2(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_3
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get1(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    const/4 v3, 0x2

    if-eq v3, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundMode"

    const-string/jumbo v4, "Sound"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "VolumeSetting"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get2(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_4
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$3;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/notification/VolumeSettings;->-wrap2(Lcom/samsung/android/settings/notification/VolumeSettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, v2, p1}, Lcom/samsung/android/settings/notification/VolumeSettings$3;->doAction(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
