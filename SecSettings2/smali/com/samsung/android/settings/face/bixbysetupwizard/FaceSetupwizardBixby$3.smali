.class Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;
.super Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub;
.source "FaceSetupwizardBixby.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-direct {p0}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayCompleted()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "PlayCompleted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-wrap2(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "face_bixby_suw_intro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-set0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3$1;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-wrap4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v1, "face_bixby_suw_befor_enroll"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "face_bixby_suw_after_enroll"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "FACE_BIXBY_SUW_AFTER_ENROLL Complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get12(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->startListenering()V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "Wrong stage!"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
