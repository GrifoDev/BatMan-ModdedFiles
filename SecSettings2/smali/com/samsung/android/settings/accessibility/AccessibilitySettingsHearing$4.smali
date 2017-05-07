.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;
.super Ljava/lang/Object;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SoundDetectors"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get9(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SoundDetectors"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v3, "FlashnotificationOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "FlashNotificationState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "FlashNotificationState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v3, "FlashnotificationOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "FlashNotificationState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "FlashNotificationState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "HearingAidsOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get10(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HearingAids"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get10(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HearingAids"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v3, "HearingAidsOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get10(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HearingAids"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get10(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HearingAids"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v3, "TurnOffAllSoundsOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "TurnOffAllSoundsState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "TurnOffAllSoundsState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v3, "TurnOffAllSoundsOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "TurnOffAllSoundsState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "TurnOffAllSoundsState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_13
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v3, "SubtitlesStyle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get8(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-wrap2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get8(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Subtitles"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v3, "GoogleSubtitles"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "google_captioning_preference_screen"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_19

    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_1a

    if-eqz v0, :cond_1a

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "GoogleSubtitles"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_18
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_19
    const/4 v0, 0x0

    goto :goto_1

    :cond_1a
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v3, "MonoAudioOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MonoAudioState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1c
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MonoAudioState"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1d
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v3, "MonoAudioOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1f

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MonoAudioState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1f
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MonoAudioState"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_20
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_21
    const-string/jumbo v3, "LeftRrightSoundBalanceMoveRight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string/jumbo v3, "LeftRrightSoundBalanceMoveLeft"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_22
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->isSeekbarInitFinish()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_23
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_24
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "EarPhone"

    const-string/jumbo v5, "PluggedIN"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Hearing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_25
    const-string/jumbo v3, "LightNotification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LightNotification"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_26
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
