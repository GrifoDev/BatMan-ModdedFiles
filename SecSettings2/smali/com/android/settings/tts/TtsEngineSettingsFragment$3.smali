.class Lcom/android/settings/tts/TtsEngineSettingsFragment$3;
.super Ljava/lang/Object;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TtsEngineSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get0(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "START_SettingsForSamsungTTSEngine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get1(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->onPreferenceClick(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get0(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "START_SamsungTTSInstallVoiceData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get2(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->onPreferenceClick(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get0(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get0(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method
