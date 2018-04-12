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
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "FcstFaceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get2(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get2(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v7

    const/16 v8, 0x100

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    const/4 v1, 0x1

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "face_without_swipe_to_unlock"

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v8

    invoke-static {v6, v7, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;I)Z

    move-result v3

    const-string/jumbo v6, "FaceLockSettings"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettingMenu"

    const-string/jumbo v8, "AlreadyIn"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const-string/jumbo v6, "RegisterFace"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "EnrolledFace"

    const-string/jumbo v8, "Exists"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    const-string/jumbo v7, "FaceSettings_register"

    invoke-static {v6, v7}, Lcom/samsung/android/settings/face/FaceSettings;->-wrap1(Lcom/samsung/android/settings/face/FaceSettings;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "EnrolledFace"

    const-string/jumbo v8, "Exists"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    :cond_8
    const-string/jumbo v6, "RemoveFace"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez v0, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "EnrolledFace"

    const-string/jumbo v8, "Exists"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-wrap0(Lcom/samsung/android/settings/face/FaceSettings;)Z

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b020e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get0(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "EnrolledFace"

    const-string/jumbo v8, "Exists"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v6, "TurnOnFace"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-nez v0, :cond_c

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "EnrolledFace"

    const-string/jumbo v8, "Exists"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_c
    if-eqz v1, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceUnlock"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_d
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    if-eqz v2, :cond_e

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "IrisUnlock"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_e
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceUnlock"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v6, "TurnOffFace"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    if-nez v1, :cond_11

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceUnlock"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_11
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceUnlock"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_13
    const-string/jumbo v6, "TurnOnUseFaceWhenScreenOn"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    if-nez v0, :cond_14

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceUnlock"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_14
    if-nez v1, :cond_15

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceUnlock"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_15
    if-eqz v4, :cond_16

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_16
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get8(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_17
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_18
    const-string/jumbo v6, "TurnOffUseFaceWhenScreenOn"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    if-eqz v1, :cond_19

    xor-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_1a

    :cond_19
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1a
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get8(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1b
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1c
    const-string/jumbo v6, "TurnOnFasterRecognition"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    if-nez v0, :cond_1d

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "EnrolledFace"

    const-string/jumbo v8, "Exists"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1d
    if-eqz v3, :cond_1e

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TurnOnFasterRecognition"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1e
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get5(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TurnOnFasterRecognition"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1f
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_20
    const-string/jumbo v6, "TurnOffFasterRecognition"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_21

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TurnOffFasterRecognition"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_21
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get5(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_22

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TurnOffFasterRecognition"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "FaceSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_22
    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3
.end method
