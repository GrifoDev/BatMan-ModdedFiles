.class Lcom/android/settings/datausage/BillingCycleChnSettings$1;
.super Ljava/lang/Object;
.source "BillingCycleChnSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleChnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/BillingCycleChnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 15

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get6(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/content/SharedPreferences;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "switch_traffic_settings"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "switch_traffic_settings"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v9, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-nez v11, :cond_4

    const/4 v5, 0x0

    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get6(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/content/SharedPreferences;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restrict_data_check_box"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restrict_data_check_box"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v9, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-nez v11, :cond_5

    const/4 v6, 0x0

    :cond_1
    :goto_1
    const-string/jumbo v11, "DataUsageLimitOn"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-nez v5, :cond_7

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "MobileDatalimit"

    const-string/jumbo v13, "AlreadyON"

    const-string/jumbo v14, "No"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "DataUsageLimitSettings"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get7(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v11

    if-eqz v5, :cond_6

    :goto_2
    invoke-virtual {v11, v9}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    move v9, v10

    goto :goto_2

    :cond_7
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "MobileDatalimit"

    const-string/jumbo v11, "AlreadyON"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    :cond_8
    const-string/jumbo v11, "DataUsageLimitOff"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    if-eqz v5, :cond_b

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "MobileDatalimit"

    const-string/jumbo v13, "AlreadyOff"

    const-string/jumbo v14, "No"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "DataUsageLimitSettings"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get7(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v11

    if-eqz v5, :cond_a

    :goto_4
    invoke-virtual {v11, v9}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    :cond_a
    move v9, v10

    goto :goto_4

    :cond_b
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "MobileDatalimit"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v9, "MonthlyDataLimitPopup"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    if-nez v5, :cond_d

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "MobileDatalimit"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_d
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get3(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataAmount"

    const-string/jumbo v11, "Exist"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_e
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataAmount"

    const-string/jumbo v11, "Exist"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataAmount"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    const-string/jumbo v9, "MB"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string/jumbo v9, "GB"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    :cond_f
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v9, "MB"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_12

    const-string/jumbo v9, "MB"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :cond_10
    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set_data_limit"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set_data_limit"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-wrap0(Lcom/android/settings/datausage/BillingCycleChnSettings;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataAmount"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataAmount"

    const-string/jumbo v11, "Already set"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v3

    const-string/jumbo v9, "BillingCycleChnSettings"

    const-string/jumbo v10, "could not persist insert byte"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get3(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataAmount"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_11
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get3(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataAmount"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_12
    :try_start_1
    const-string/jumbo v9, "GB"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    const-string/jumbo v9, "GB"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    const/high16 v9, 0x44800000    # 1024.0f

    mul-float/2addr v0, v9

    goto/16 :goto_5

    :cond_13
    const-string/jumbo v9, "DataWarning"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get5(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_14
    const-string/jumbo v9, "DataUsageLimitRestrictOn"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    if-nez v5, :cond_15

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataWarninglmit"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_15
    if-nez v6, :cond_17

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Data usage restrict when limit exceeded "

    const-string/jumbo v11, "AlreadyOn"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_16
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get2(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_17
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_18
    const-string/jumbo v9, "DataUsageLimitRestrictOff"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    if-nez v5, :cond_19

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataWarninglmit"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_19
    if-eqz v6, :cond_1b

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Data usage restrict when limit exceeded "

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1a
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get2(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1b
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Data usage restrict when limit exceeded "

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1c
    const-string/jumbo v9, "PlanBillingPopup"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v5, :cond_1d

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "MobileDatalimit"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1d
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v9

    if-nez v9, :cond_1e

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DayOfMonth"

    const-string/jumbo v11, "Exist"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1e
    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DayOfMonth"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1f

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DayOfMonth"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1f
    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set_package_start_date_value"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set_package_start_date_value"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-wrap0(Lcom/android/settings/datausage/BillingCycleChnSettings;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DayOfMonth"

    const-string/jumbo v11, "Already set"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v3

    const-string/jumbo v9, "BillingCycleChnSettings"

    const-string/jumbo v10, "could not persist insert byte"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DayOfMonth"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DataUsageLimitSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v9}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3
.end method
