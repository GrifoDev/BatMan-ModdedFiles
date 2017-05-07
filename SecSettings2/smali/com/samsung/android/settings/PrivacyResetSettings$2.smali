.class Lcom/samsung/android/settings/PrivacyResetSettings$2;
.super Ljava/lang/Object;
.source "PrivacyResetSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/PrivacyResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacyResetSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacyResetSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ResetSettings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get3(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get3(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/PrivacyResetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "ResetNetworkSettings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    const-string/jumbo v6, "network_reset"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/PrivacyResetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v5, "FactoryDataReset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/PrivacyResetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v5, "AutoRestartON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string/jumbo v5, "AutoRestartOFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_a
    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->-wrap0()Z

    move-result v5

    if-nez v5, :cond_10

    const-string/jumbo v5, "AutoRestartON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/SecSettingsSwitchPreference;->performClick()V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "AutoRestart"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "Reset"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "AutoRestart"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "Reset"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/SecSettingsSwitchPreference;->performClick()V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "AutoRestart"

    const-string/jumbo v7, "AlreadyOFF"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "Reset"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "AutoRestart"

    const-string/jumbo v7, "AlreadyOFF"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "Reset"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v5, "AutoRestart"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->-wrap0()Z

    move-result v5

    if-nez v5, :cond_13

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/PrivacyResetSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_13
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v5, "AutoPowerOnOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    const-string/jumbo v6, "pref_auto_power_on_off"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/PrivacyResetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_16

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
