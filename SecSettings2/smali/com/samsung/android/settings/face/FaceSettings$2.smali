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
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "FcstFaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get2(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get2(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v6

    const/16 v7, 0x100

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v1, 0x1

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "face_without_swipe_to_unlock"

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v7

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;I)Z

    move-result v2

    const-string/jumbo v5, "FaceLockSettings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettingMenu"

    const-string/jumbo v7, "AlreadyIn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

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
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const-string/jumbo v5, "RegisterFace"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "EnrolledFace"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "EnrolledFace"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    const-string/jumbo v6, "FaceSettings_register"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/face/FaceSettings;->-wrap2(Lcom/samsung/android/settings/face/FaceSettings;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    :cond_7
    const-string/jumbo v5, "RemoveFace"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v0, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "EnrolledFace"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "EnrolledFace"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-wrap0(Lcom/samsung/android/settings/face/FaceSettings;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100268

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get0(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v5, "TurnOnFace"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    if-nez v0, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "EnrolledFace"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_b
    if-eqz v1, :cond_c

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlock"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "IrisUnlock"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlock"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v5, "TurnOffFace"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    if-nez v1, :cond_10

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlock"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_10
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlock"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_12
    const-string/jumbo v5, "TurnOnUseFaceWhenScreenOn"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    if-nez v0, :cond_13

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlock"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_13
    if-nez v1, :cond_14

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlock"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_14
    if-eqz v3, :cond_15

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_15
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_16
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get8(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_17
    const-string/jumbo v5, "TurnOffUseFaceWhenScreenOn"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    if-eqz v1, :cond_19

    if-eqz v3, :cond_19

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_18
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get8(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_19
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1a
    const-string/jumbo v5, "TurnOnFasterRecognition"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    if-nez v0, :cond_1b

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "EnrolledFace"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1b
    if-eqz v2, :cond_1c

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TurnOnFasterRecognition"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1c
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get5(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TurnOnFasterRecognition"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1d
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1e
    const-string/jumbo v5, "TurnOffFasterRecognition"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v2, :cond_1f

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TurnOffFasterRecognition"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1f
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TurnOffFasterRecognition"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_20
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get5(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3
.end method
