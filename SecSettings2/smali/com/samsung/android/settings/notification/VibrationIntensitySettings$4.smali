.class Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;
.super Landroid/os/Handler;
.source "VibrationIntensitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VibrationIntensitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getInitFinish()Z

    move-result v9

    if-eqz v9, :cond_12

    const-string/jumbo v9, "VibrationIncommingCall"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "VibrationIncomingCall"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/16 v9, 0x64

    if-le v7, v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :catch_0
    move-exception v0

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    mul-int/2addr v9, v7

    div-int/lit8 v4, v9, 0x64

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :cond_3
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v4, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v4, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v9, "VibrationIncommingCallUp"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string/jumbo v9, "VibrationIncomingCallUp"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_7
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_8
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x16

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x16

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v9, "VibrationIncommingCallDown"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string/jumbo v9, "VibrationIncomingCallDown"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_a
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_b
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x15

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x15

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v9, "VibrationIncommingCallMax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string/jumbo v9, "VibrationIncomingCallMax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_d
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v3, :cond_e

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_e
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v3, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v9, "VibrationIncommingCallMin"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    const-string/jumbo v9, "VibrationIncomingCallMin"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_10
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_11
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_12
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x64

    invoke-virtual {v9, p1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getInitFinish()Z

    move-result v9

    if-eqz v9, :cond_1f

    const-string/jumbo v9, "VibrationNotifications"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    :try_start_1
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_13

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :catch_1
    move-exception v0

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_13
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    mul-int/2addr v9, v8

    div-int/lit8 v4, v9, 0x64

    if-nez v4, :cond_14

    const/4 v4, 0x1

    :cond_14
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v4, :cond_16

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_15
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_16
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v4, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2

    :cond_17
    const-string/jumbo v9, "VibrationNotificationsUp"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    if-ne v9, v10, :cond_18

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_18
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x16

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x16

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_19
    const-string/jumbo v9, "VibrationNotificationsDown"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_1a

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_1a
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x15

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x15

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_1b
    const-string/jumbo v9, "VibrationNotificationsMax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v3, :cond_1c

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_1c
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v3, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_1d
    const-string/jumbo v9, "VibrationNotificationsMin"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_1e

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_1e
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_1f
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x64

    invoke-virtual {v9, p1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getInitFinish()Z

    move-result v9

    if-eqz v9, :cond_2c

    const-string/jumbo v9, "VibrationFeedback"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    :try_start_2
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    const/16 v9, 0x64

    if-le v6, v9, :cond_20

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :catch_2
    move-exception v0

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_20
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    mul-int/2addr v9, v6

    div-int/lit8 v4, v9, 0x64

    if-nez v4, :cond_21

    const/4 v4, 0x1

    :cond_21
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v4, :cond_23

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_22
    :goto_3
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_23
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v4, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    :cond_24
    const-string/jumbo v9, "VibrationFeedbackUp"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    if-ne v9, v10, :cond_25

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_25
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x16

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x16

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_26
    const-string/jumbo v9, "VibrationFeedbackDown"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_27

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_27
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x15

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x15

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_28
    const-string/jumbo v9, "VibrationFeedbackMax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v3, :cond_29

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_29
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v3, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_2a
    const-string/jumbo v9, "VibrationFeedbackMin"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_2b

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_2b
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_2c
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x64

    invoke-virtual {v9, p1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
