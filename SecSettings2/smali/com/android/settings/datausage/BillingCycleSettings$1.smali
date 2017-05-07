.class Lcom/android/settings/datausage/BillingCycleSettings$1;
.super Ljava/lang/Object;
.source "BillingCycleSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/BillingCycleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/BillingCycleSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "SetBillingCycle"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "StartBillingCycle"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_0
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get0(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get0(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/Preference;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_1
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "StartBillingCycleApply"

    const-string/jumbo v11, "Exist"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "StartBillingCycle"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get0(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v9, "SetDataWarning"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get2(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v9, "DataLimitOn"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get4(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/SwitchPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataLimit"

    const-string/jumbo v11, "AlreadyOn"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "BillingCycle"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get4(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataLimit"

    const-string/jumbo v11, "AlreadyOn"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "BillingCycle"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v9, "DataLimitOff"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get4(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/SwitchPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataLimit"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "BillingCycle"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get4(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataLimit"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "BillingCycle"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v9, "SetDataLimit"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get4(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/SwitchPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get4(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_e
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v9, "SetDataWarningApply"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string/jumbo v9, "SetDataLimitApply"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    :cond_11
    const-string/jumbo v9, "SetDataWarningApply"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    const-string/jumbo v5, "SetDataWarning"

    const-string/jumbo v4, "SetDataWarningApply"

    :goto_1
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_19

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    :try_start_0
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v9

    int-to-long v0, v9

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-lez v9, :cond_18

    const-wide/16 v10, 0x400

    cmp-long v9, v0, v10

    if-gez v9, :cond_18

    if-eqz v2, :cond_12

    if-ne v2, v13, :cond_18

    :cond_12
    if-nez v2, :cond_15

    const-string/jumbo v9, "%d MB"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-wide/32 v10, 0x100000

    mul-long/2addr v0, v10

    :goto_2
    long-to-float v9, v0

    const/high16 v10, 0x53800000

    cmpl-float v9, v9, v10

    if-lez v9, :cond_13

    const-wide v0, 0x10000000000L

    :cond_13
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-wrap1(Lcom/android/settings/datausage/BillingCycleSettings;)J

    move-result-wide v10

    cmp-long v9, v10, v0

    if-nez v9, :cond_16

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "AlreadySet"

    const-string/jumbo v11, "yes"

    invoke-virtual {v9, v4, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "databyte"

    invoke-virtual {v9, v10, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v5, "SetDataLimit"

    const-string/jumbo v4, "SetDataLimitApply"

    goto/16 :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v9, "BillingCycleSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mEmSettingsManager NumberFormatException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "no"

    invoke-virtual {v9, v4, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_15
    const-string/jumbo v9, "%d GB"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-wide/32 v10, 0x40000000

    mul-long/2addr v0, v10

    goto/16 :goto_2

    :cond_16
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "AlreadySet"

    const-string/jumbo v11, "no"

    invoke-virtual {v9, v4, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "databyte"

    invoke-virtual {v9, v10, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_17
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9, v0, v1}, Lcom/android/settings/datausage/BillingCycleSettings;->-wrap2(Lcom/android/settings/datausage/BillingCycleSettings;J)V

    goto/16 :goto_0

    :cond_18
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "no"

    invoke-virtual {v9, v4, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_19
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "no"

    invoke-virtual {v9, v4, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v9, "StartBillingCycleApply"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v9

    if-lez v9, :cond_1e

    const/4 v6, -0x1

    :try_start_1
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    :goto_3
    if-lez v6, :cond_1d

    const/16 v9, 0x1f

    if-gt v6, v9, :cond_1d

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-wrap0(Lcom/android/settings/datausage/BillingCycleSettings;)I

    move-result v9

    if-ne v9, v6, :cond_1b

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "StartBillingCycleApply"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "cycle"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "StartBillingCycle"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v9, "BillingCycleSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mEmSettingsManager NumberFormatException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1b
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_1c

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "StartBillingCycleApply"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "cycle"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "StartBillingCycle"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9, v6}, Lcom/android/settings/datausage/BillingCycleSettings;->-wrap3(Lcom/android/settings/datausage/BillingCycleSettings;I)V

    goto/16 :goto_0

    :cond_1d
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "StartBillingCycleApply"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "StartBillingCycle"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1e
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "StartBillingCycleApply"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "StartBillingCycle"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
