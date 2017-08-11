.class Lcom/android/settings/datausage/DataUsageSummary$7;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v22, "DataSaver"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/DataSaverPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get6(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get7(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "opera_max_china_state"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const-string/jumbo v22, "DataUsageDetail"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v22, v0

    if-eqz v22, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsageDetail"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3
    :goto_1
    sget-boolean v22, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-eqz v22, :cond_4

    const-string/jumbo v22, "DataUsageNotificationsOn"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    const-string/jumbo v23, "data_usage_reminder"

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_4d

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v22

    if-eqz v22, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsageNotifications"

    const-string/jumbo v24, "AlreadyOn"

    const-string/jumbo v25, "yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    const-string/jumbo v22, "MobileDataOn"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "MobileDataOn"

    const-string/jumbo v24, "AlreadyOn"

    const-string/jumbo v25, "yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get6(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v22

    if-nez v22, :cond_8

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    :goto_3
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->MobileDataPerformClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "MobileDataOn"

    const-string/jumbo v24, "AlreadyOn"

    const-string/jumbo v25, "no"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    goto :goto_3

    :cond_9
    const-string/jumbo v22, "MobileDataOff"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v10

    if-nez v10, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "MobileDataOff"

    const-string/jumbo v24, "AlreadyOff"

    const-string/jumbo v25, "yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get6(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v22

    if-nez v22, :cond_c

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    :goto_4
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->MobileDataPerformClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "MobileDataOff"

    const-string/jumbo v24, "AlreadyOff"

    const-string/jumbo v25, "no"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    goto :goto_4

    :cond_d
    const-string/jumbo v22, "CellularDataUsage"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_e

    const-string/jumbo v22, "BillingCycle"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v22

    if-lez v22, :cond_f

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    :cond_f
    :goto_5
    const-string/jumbo v22, "DataUsageSummary"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "EmSettingsManager : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " sim Param : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get6(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v22

    if-nez v22, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_16

    if-ltz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    :goto_6
    const/4 v8, 0x0

    :goto_7
    invoke-virtual {v11}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_16

    invoke-virtual {v11, v8}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    const-string/jumbo v22, "CellularDataUsage"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    instance-of v0, v12, Lcom/android/settings/datausage/DataUsagePreference;

    move/from16 v22, v0

    if-nez v22, :cond_11

    :cond_10
    const-string/jumbo v22, "BillingCycle"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    instance-of v0, v12, Lcom/android/settings/datausage/BillingCyclePreference;

    move/from16 v22, v0

    if-eqz v22, :cond_15

    :cond_11
    invoke-virtual {v12}, Landroid/preference/Preference;->isEnabled()Z

    move-result v22

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_13

    if-ltz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "SimCardInfo"

    const-string/jumbo v24, "Match"

    const-string/jumbo v25, "yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v22, "DataUsageSummary"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "NumberFormatException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, -0x1

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    goto/16 :goto_6

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "SimCardInfo"

    const-string/jumbo v24, "Match"

    const-string/jumbo v25, "no"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v11}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_1b

    invoke-virtual {v11, v8}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    const-string/jumbo v22, "CellularDataUsage"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    instance-of v0, v12, Lcom/android/settings/datausage/DataUsagePreference;

    move/from16 v22, v0

    if-nez v22, :cond_19

    :cond_18
    const-string/jumbo v22, "BillingCycle"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    instance-of v0, v12, Lcom/android/settings/datausage/BillingCyclePreference;

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_1a
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "SimCardInfo"

    const-string/jumbo v24, "Match"

    const-string/jumbo v25, "yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v22, "AlertMeAboutDataUsageOn"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    const-string/jumbo v23, "alert_at_warning"

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/datausage/AlertAtWarningPreference;

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/android/settings/datausage/AlertAtWarningPreference;->isChecked()Z

    move-result v22

    if-eqz v22, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "AlertMeAboutDataUsage"

    const-string/jumbo v24, "AlreadyOn"

    const-string/jumbo v25, "Yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "AlertMeAboutDataUsage"

    const-string/jumbo v24, "AlreadyOn"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v22, "AlertMeAboutDataUsageOff"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    const-string/jumbo v23, "alert_at_warning"

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/datausage/AlertAtWarningPreference;

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/android/settings/datausage/AlertAtWarningPreference;->isChecked()Z

    move-result v22

    if-nez v22, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "AlertMeAboutDataUsage"

    const-string/jumbo v24, "AlreadyOff"

    const-string/jumbo v25, "Yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "AlertMeAboutDataUsage"

    const-string/jumbo v24, "AlreadyOff"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_23
    const-string/jumbo v22, "ConfirmMobileDataConnectionOn"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v22

    if-eqz v22, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v22

    if-eqz v22, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "ConfirmMobileDataConnection"

    const-string/jumbo v24, "AlreadyOn"

    const-string/jumbo v25, "yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "ConfirmMobileDataConnection"

    const-string/jumbo v24, "AlreadyOn"

    const-string/jumbo v25, "no"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "ConfirmMobileDataConnection"

    const-string/jumbo v24, "Exist"

    const-string/jumbo v25, "no"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_27
    const-string/jumbo v22, "ConfirmMobileDataConnectionOff"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v22

    if-eqz v22, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v22

    if-nez v22, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "ConfirmMobileDataConnection"

    const-string/jumbo v24, "AlreadyOf"

    const-string/jumbo v25, "yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "ConfirmMobileDataConnection"

    const-string/jumbo v24, "AlreadyOf"

    const-string/jumbo v25, "no"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "ConfirmMobileDataConnection"

    const-string/jumbo v24, "Exist"

    const-string/jumbo v25, "no"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2b
    const-string/jumbo v22, "WiFiDataUsage"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get13(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-result-object v22

    const-string/jumbo v23, "wifi_data_usage"

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/datausage/DataUsagePreference;

    if-eqz v14, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/settings/datausage/DataUsagePreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "WiFiDataUsage"

    const-string/jumbo v24, "Exist"

    const-string/jumbo v25, "yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "WiFiDataUsage"

    const-string/jumbo v24, "Exist"

    const-string/jumbo v25, "no"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2e
    const-string/jumbo v22, "MobiledataInternationalDataRoaming"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get10(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/Preference;

    move-result-object v22

    if-eqz v22, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get10(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "MobiledataInternationalDataRoaming"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "MobiledataInternationalDataRoaming"

    const-string/jumbo v24, "Exist"

    const-string/jumbo v25, "no"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "MobiledataInternationalDataRoaming"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_31
    const-string/jumbo v22, "DisplayUnits"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get8(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v22

    if-eqz v22, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get11(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/view/MenuItem;

    move-result-object v22

    if-eqz v22, :cond_34

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v22

    if-nez v22, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-wrap1(Lcom/android/settings/datausage/DataUsageSummary;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DisplayUnits"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DisplayUnits"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    goto/16 :goto_0

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DisplayUnits"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_36
    const-string/jumbo v22, "RestrictWiFiNetwork"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get13(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-result-object v22

    const-string/jumbo v23, "network_restrictions"

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/settings/datausage/NetworkRestrictionsPreference;

    if-eqz v15, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/settings/datausage/NetworkRestrictionsPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "RestrictWiFiNetworks"

    const-string/jumbo v24, "Exist"

    const-string/jumbo v25, "yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "RestrictWiFiNetworks"

    const-string/jumbo v24, "Exist"

    const-string/jumbo v25, "no"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_3a
    const-string/jumbo v22, "ManageAppData"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    const-string/jumbo v23, "restrict_app_data"

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "ManageAppData"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_3b
    const-string/jumbo v22, "WlanUsageView"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    const-string/jumbo v23, "wifi_data_usage"

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "WlanUsageView"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_3c
    const-string/jumbo v22, "NetworkRestrictView"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    const-string/jumbo v23, "network_restrictions"

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "NetworkRestrictView"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_3d
    const-string/jumbo v22, "DataUsageLimitSettings"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    const-string/jumbo v23, "billing_preference_chn"

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsageLimitSettings"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_3e
    const-string/jumbo v22, "UsedDataPopup"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v22

    if-nez v22, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    const-string/jumbo v23, "set_used_data"

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataAmount"

    const-string/jumbo v24, "Exist"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataAmount"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_43

    const-string/jumbo v22, "MB"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_40

    const-string/jumbo v22, "GB"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_43

    :cond_40
    const/4 v2, 0x0

    :try_start_1
    const-string/jumbo v22, "MB"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_44

    const-string/jumbo v22, "MB"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_41
    :goto_9
    new-instance v21, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "data_used_by_check_time"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "check_time"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "middle_real_value"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRealTimeValue(J)J

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v22, v0

    sget-object v23, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updatePolicy()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataAmount"

    const-string/jumbo v24, "Already set"

    const-string/jumbo v25, "no"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v7

    const-string/jumbo v22, "DataUsageSummary"

    const-string/jumbo v23, "could not persist insert byte"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    const-string/jumbo v23, "set_used_data"

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    const-string/jumbo v24, "Valid"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    const-string/jumbo v23, "set_used_data"

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataAmount"

    const-string/jumbo v24, "Valid"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_44
    :try_start_2
    const-string/jumbo v22, "GB"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_41

    const-string/jumbo v22, "GB"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    const/high16 v22, 0x44800000    # 1024.0f

    mul-float v2, v2, v22

    goto/16 :goto_9

    :cond_45
    const-string/jumbo v22, "DataCompressionOn"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_48

    if-nez v17, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Data Compression "

    const-string/jumbo v24, "AlreadyON"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    const-string/jumbo v23, "data_saving_chn"

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Data Compression "

    const-string/jumbo v24, "AlreadyON"

    const-string/jumbo v25, "Yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_48
    const-string/jumbo v22, "DataCompressionOff"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    const/16 v22, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Data Compression "

    const-string/jumbo v24, "AlreadyOff"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    const-string/jumbo v23, "data_saving_chn"

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Data Compression "

    const-string/jumbo v24, "AlreadyOff"

    const-string/jumbo v25, "Yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsageNotifications"

    const-string/jumbo v24, "AlreadyOn"

    const-string/jumbo v25, "no"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_4e
    const-string/jumbo v22, "DataUsageNotificationsOff"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    const-string/jumbo v23, "data_usage_reminder"

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_51

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v22

    if-eqz v22, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsageNotifications"

    const-string/jumbo v24, "AlreadyOff"

    const-string/jumbo v25, "no"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsageNotifications"

    const-string/jumbo v24, "AlreadyOff"

    const-string/jumbo v25, "yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "DataUsage"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$7;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2
.end method
