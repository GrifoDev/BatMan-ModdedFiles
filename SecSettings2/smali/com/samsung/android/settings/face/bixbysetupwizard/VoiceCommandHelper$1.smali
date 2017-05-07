.class Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$1;
.super Ljava/lang/Object;
.source "VoiceCommandHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    :try_start_0
    const-string/jumbo v1, "FcstVoiceCommandHelper"

    const-string/jumbo v2, "voice_start sound completion"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "FcstVoiceCommandHelper"

    const-string/jumbo v2, "startListenering"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    invoke-static {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;)Lcom/samsung/vsf/SpeechRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vsf/SpeechRecognizer;->startListening()V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
