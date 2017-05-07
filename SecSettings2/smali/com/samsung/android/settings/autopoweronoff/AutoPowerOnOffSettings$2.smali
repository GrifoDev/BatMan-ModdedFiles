.class Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;
.super Ljava/lang/Object;
.source "AutoPowerOnOffSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 13

    const/16 v12, 0xfe

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "TurnOnAutoPowerOn"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOn"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOn"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "TurnOffAutoPowerOn"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOn"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOn"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v7, "AutoPowerOnTime"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetTime"

    const-string/jumbo v9, "exist"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    const/4 v3, -0x1

    :try_start_0
    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    const-string/jumbo v7, "AutoPowerOnOffSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AutoPowerOnTime: hour = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mins = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v10, :cond_8

    if-ne v3, v10, :cond_9

    :cond_8
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetTime"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "No"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    :cond_9
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_a
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;II)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SameAutoPowerON"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "time"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get5(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v7, "AutoPowerOnDays"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetDays"

    const-string/jumbo v9, "exist"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const/4 v4, -0x1

    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :goto_2
    const-string/jumbo v7, "AutoPowerOnOffSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AutoPowerOnDays: setDays = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v4, :cond_e

    if-le v4, v12, :cond_f

    :cond_e
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetDays"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    :cond_f
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_10
    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "auto_power_on_repeat_days"

    invoke-virtual {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8, v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;Landroid/content/Context;Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SameAutoPowerON"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "Day"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v7, "TurnOnAutoPowerOff"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOff"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOff"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_14
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v7, "TurnOffAutoPowerOff"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_16

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOff"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOff"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_17
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v7, "AutoPowerOffTime"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v7

    if-nez v7, :cond_19

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetTime"

    const-string/jumbo v9, "exist"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_19
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    const/4 v3, -0x1

    :try_start_2
    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    :goto_3
    const-string/jumbo v7, "AutoPowerOnOffSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AutoPowerOffTime: hour = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mins = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v10, :cond_1a

    if-ne v3, v10, :cond_1b

    :cond_1a
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetTime"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    :cond_1b
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_1c

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_1c
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap2(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;II)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SameAutoPowerOFF"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "time"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get2(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1d
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v7, "AutoPowerOffDays"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v7

    if-nez v7, :cond_1f

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetDays"

    const-string/jumbo v9, "exist"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1f
    const/4 v4, -0x1

    :try_start_3
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    :goto_4
    const-string/jumbo v7, "AutoPowerOnOffSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AutoPowerOnDays: setDays = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v4, :cond_20

    if-le v4, v12, :cond_21

    :cond_20
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SetDays"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_4

    :cond_21
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_22

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_22
    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "auto_power_off_repeat_days"

    invoke-virtual {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8, v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;Landroid/content/Context;Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_23

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SameAutoPowerOff"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "Day"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "AutoPowerOnOff"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_23
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
