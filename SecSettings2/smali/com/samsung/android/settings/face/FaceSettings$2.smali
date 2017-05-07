.class Lcom/samsung/android/settings/face/FaceSettings$2;
.super Ljava/lang/Object;
.source "FaceSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/FaceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FcstFaceSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get2(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get2(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get6(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v5

    const/16 v6, 0x100

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v1, 0x1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "face_without_swipe_to_unlock"

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get6(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v6

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :goto_2
    const-string/jumbo v4, "FaceLockSettings"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettingMenu"

    const-string/jumbo v6, "AlreadyIn"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "RegisterFace"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "EnrolledFace"

    const-string/jumbo v6, "Exists"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "EnrolledFace"

    const-string/jumbo v6, "Exists"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    const-string/jumbo v5, "FaceSettings_register"

    invoke-static {v4, v5}, Lcom/samsung/android/settings/face/FaceSettings;->-wrap2(Lcom/samsung/android/settings/face/FaceSettings;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    :cond_7
    const-string/jumbo v4, "RemoveFace"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v0, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "EnrolledFace"

    const-string/jumbo v6, "Exists"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "EnrolledFace"

    const-string/jumbo v6, "Exists"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-wrap0(Lcom/samsung/android/settings/face/FaceSettings;)Z

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100262

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get0(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v4, "TurnOnFace"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    if-nez v0, :cond_b

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "EnrolledFace"

    const-string/jumbo v6, "Exists"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_b
    if-eqz v1, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceUnlock"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get6(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IrisUnlock"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_d
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceUnlock"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v4, "TurnOffFace"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-nez v1, :cond_10

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceUnlock"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_10
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceUnlock"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_12
    const-string/jumbo v4, "TurnOnUseFaceWhenScreenOn"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    if-nez v0, :cond_13

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceUnlock"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_13
    if-nez v1, :cond_14

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceUnlock"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_14
    if-eqz v2, :cond_15

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_15
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_16
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_17
    const-string/jumbo v4, "TurnOffUseFaceWhenScreenOn"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_19

    if-eqz v2, :cond_19

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_18
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_19
    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "FaceSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3
.end method
