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
    .locals 13

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "SoundMode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b1465

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "Mute"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0b33

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_0
    :goto_0
    const/4 v9, -0x1

    if-ne v4, v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundMode"

    const-string/jumbo v11, "Match"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundModeSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v9, "Vibrate"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v4, 0x1

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0b32

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    const-string/jumbo v9, "Sound"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v9

    if-ne v4, v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundMode"

    const-string/jumbo v11, "AlreadySelected"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundMode"

    invoke-virtual {v9, v10, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundModeSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundMode"

    const-string/jumbo v11, "AlreadySelected"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundMode"

    invoke-virtual {v9, v10, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundModeSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v9, "TemporaryMuteOn"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundMode"

    const-string/jumbo v11, "AlreadyMute"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundsModeSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_8
    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TemporaryMute"

    const-string/jumbo v11, "AlreadyOn"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundsModeSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_9
    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TemporaryMute"

    const-string/jumbo v11, "AlreadyOn"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundsModeSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v9, "TemporaryMuteOff"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundMode"

    const-string/jumbo v11, "AlreadyMute"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundsModeSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_c
    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TemporaryMute"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundsModeSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_d
    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TemporaryMute"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SoundsModeSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v9, "Mute"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v9, "MuteDuration"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "SoundModeSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "recipientId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "HH:MM"

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v7, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_11

    if-nez v0, :cond_12

    :cond_11
    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "MuteDuration"

    const-string/jumbo v11, "Exist"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Mute"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    :cond_12
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v9

    mul-int/lit8 v3, v9, 0x3c

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setMuteInterval(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "MuteDuration"

    const-string/jumbo v11, "Exist"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Mute"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_13
    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method
