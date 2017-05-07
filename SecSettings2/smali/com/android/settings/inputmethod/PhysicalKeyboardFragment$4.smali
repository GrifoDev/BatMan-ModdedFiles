.class Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ShowVirtualKeyboardOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-wrap0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get3(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ShowVirtualKeyboard"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "PhysicalKeyboard"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get2(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ShowVirtualKeyboard"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "PhysicalKeyboard"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "ShowVirtualKeyboardOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-wrap0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get3(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ShowVirtualKeyboard"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "PhysicalKeyboard"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get2(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ShowVirtualKeyboard"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "PhysicalKeyboard"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v2, "Keyboardshortcuts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-wrap1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "PhysicalKeyboard"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method
