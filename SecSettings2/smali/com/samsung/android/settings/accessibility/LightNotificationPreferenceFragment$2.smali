.class Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;
.super Ljava/lang/Object;
.source "LightNotificationPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ScreenOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const-string/jumbo v2, "Screen"

    invoke-virtual {p0, v1, v2, v4}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->performSwitchTrigger(Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "ScreenOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const-string/jumbo v2, "Screen"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->performSwitchTrigger(Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "CameraFlashOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const-string/jumbo v2, "Flash"

    invoke-virtual {p0, v1, v2, v4}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->performSwitchTrigger(Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "CameraFlashOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const-string/jumbo v2, "Flash"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->performSwitchTrigger(Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "LightNotification"

    const-string/jumbo v2, "No such bixby rule for LightNotification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public performSwitchTrigger(Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eq p3, v3, :cond_4

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1, p3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Already"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_5

    const-string/jumbo v3, "On"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_6

    const-string/jumbo v1, "no"

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, p2, v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LightNotification"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "Off"

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "yes"

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3
.end method
