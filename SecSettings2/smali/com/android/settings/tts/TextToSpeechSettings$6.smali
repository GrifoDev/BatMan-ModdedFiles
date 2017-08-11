.class Lcom/android/settings/tts/TextToSpeechSettings$6;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x0

    const-string/jumbo v2, "TextToSpeechSet"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-lez v2, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v14

    if-ltz v14, :cond_1

    const/16 v2, 0x64

    if-gt v14, v2, :cond_1

    mul-int/lit8 v17, v14, 0x6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v4, "tts_default_rate"

    move/from16 v0, v17

    invoke-static {v2, v4, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get3(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2, v15}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap4(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v2, "TextToSpeechSettings"

    const-string/jumbo v4, "failed to get param for bixby. "

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v2, "TextToSpeechUp"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "TextToSpeechMax"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    const/16 v4, 0x258

    if-ne v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "SpeechRate"

    const-string/jumbo v5, "AlreadyMax"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v2, "TextToSpeechUp"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    add-int/lit8 v17, v2, 0x14

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v4, "tts_default_rate"

    move/from16 v0, v17

    invoke-static {v2, v4, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get3(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2, v15}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap4(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const/16 v17, 0x258

    goto :goto_1

    :cond_7
    const-string/jumbo v2, "TextToSpeechDown"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "TextToSpeechMin"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "SpeechRate"

    const-string/jumbo v5, "AlreadyMin"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "TextToSpeechDown"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    add-int/lit8 v17, v2, -0x14

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v4, "tts_default_rate"

    move/from16 v0, v17

    invoke-static {v2, v4, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get3(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2, v15}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap4(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const/16 v17, 0xa

    goto :goto_2

    :cond_b
    const-string/jumbo v2, "SamsungTextToSpeechEngine"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get6(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/speech/tts/TtsEngines;

    move-result-object v2

    invoke-virtual {v2}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v9

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v9, :cond_e

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    const-string/jumbo v4, "SMT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v13

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "name"

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "label"

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_c

    const-string/jumbo v2, "voices"

    invoke-virtual {v3, v2, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v2, Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v5, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v2, "GoogleTextToSpeech"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v9

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v9, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/settings/tts/TtsEnginePreference;

    if-eqz v2, :cond_12

    move-object/from16 v10, v16

    check-cast v10, Lcom/android/settings/tts/TtsEnginePreference;

    invoke-virtual {v10}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "google"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->getCurrentKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "GoogleTextToSpeech"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_5
    return-void

    :cond_10
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/android/settings/tts/TtsEnginePreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "GoogleTextToSpeech"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_5

    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    :cond_13
    const-string/jumbo v2, "TextToSpeechSettings"

    const-string/jumbo v4, "There is no google tts"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v2, "IncreasePitch"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string/jumbo v2, "MaximizePitch"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    const/16 v4, 0x190

    if-ne v2, v4, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "AlreadyMax"

    const-string/jumbo v5, "Yes"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v2, "IncreasePitch"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    add-int/lit8 v17, v2, 0x14

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v4, "tts_default_pitch"

    move/from16 v0, v17

    invoke-static {v2, v4, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2, v15}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap3(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    const/16 v17, 0x190

    goto :goto_6

    :cond_18
    const-string/jumbo v2, "MinimizePitch"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string/jumbo v2, "DecreasePitch"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    const/16 v4, 0x19

    if-ne v2, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "AlreadyMin"

    const-string/jumbo v5, "Yes"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v2, "DecreasePitch"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    add-int/lit8 v17, v2, -0x14

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v4, "tts_default_pitch"

    move/from16 v0, v17

    invoke-static {v2, v4, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2, v15}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap3(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1b
    const/16 v17, 0x19

    goto :goto_7

    :cond_1c
    const-string/jumbo v2, "ResetSpeechRate"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "ResetSpeechRate"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get9(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/Preference;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v4}, Lcom/android/settings/tts/TextToSpeechSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v2, "ResetPitch"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "ResetPitch"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get8(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/Preference;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v4}, Lcom/android/settings/tts/TextToSpeechSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v2, "ListenToAnExample"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get7(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "No"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
