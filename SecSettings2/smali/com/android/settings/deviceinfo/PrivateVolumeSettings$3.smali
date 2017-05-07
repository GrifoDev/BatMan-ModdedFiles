.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UsedSpace"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    const v3, 0x7f0b0542

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UsedSpace"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "CachedDataPopup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "CachedDataPopupConfirm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    const v3, 0x7f0b154b

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "CachedDataPopup"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "AppsInTurnalStorageListView"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    const v3, 0x7f0b1547

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "InternalStorage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "InternalStorage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$3;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
