.class public Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;
.super Ljava/lang/Object;
.source "VoiceCommandHelper.java"

# interfaces
.implements Lcom/samsung/vsf/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$1;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;
    }
.end annotation


# static fields
.field public static CERT_PATH:Ljava/lang/String;

.field public static ENCODING_DONE_IN_SDK:Z

.field public static RECORDING_DONE_IN_SDK:Z

.field public static SPEECH_DETECTION_DONE_IN_SDK:Z

.field public static USE_TLS:Z


# instance fields
.field completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

.field private mContext:Landroid/content/Context;

.field private mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;)Lcom/samsung/vsf/SpeechRecognizer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->RECORDING_DONE_IN_SDK:Z

    sput-boolean v0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->ENCODING_DONE_IN_SDK:Z

    sput-boolean v0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->SPEECH_DETECTION_DONE_IN_SDK:Z

    sput-boolean v0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->USE_TLS:Z

    const-string/jumbo v0, "/system/etc/security/cacerts/399e7759.0"

    sput-object v0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->CERT_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;)V
    .locals 8

    const/4 v7, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$1;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;)V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->getCurrentLocale()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/vsf/SpeechRecognizer$Config;

    invoke-direct {v2}, Lcom/samsung/vsf/SpeechRecognizer$Config;-><init>()V

    invoke-virtual {v2, v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setLocale(Ljava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->RECORDING_DONE_IN_SDK:Z

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsRecordingRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsSpeechDetectionNotificationRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setEPDThresholdDuration(I)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    const/16 v3, 0x3e80

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setSamplingRate(I)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->ENCODING_DONE_IN_SDK:Z

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsEncodingRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->SPEECH_DETECTION_DONE_IN_SDK:Z

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsSpeechDetectionRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsPCMDumpRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    const-string/jumbo v3, "cs-kr2-qa-n66.samsung-svoice.com"

    sget-boolean v4, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->USE_TLS:Z

    sget-object v5, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->CERT_PATH:Ljava/lang/String;

    const/16 v6, 0x1bb

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setServerDetails(Ljava/lang/String;IZLjava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setTOSAccepted(ZZ)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setUsePLM(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    const-string/jumbo v3, "dash"

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setASRDictationModel(Ljava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setEPDThresholdDuration(I)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setSPDThresholdDuration(I)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsSPXDumpRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/vsf/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)Lcom/samsung/vsf/SpeechRecognizer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v2, p0}, Lcom/samsung/vsf/SpeechRecognizer;->setListener(Lcom/samsung/vsf/RecognitionListener;)V

    return-void
.end method

.method private getCurrentLocale()Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string/jumbo v3, "FcstVoiceCommandHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "curLocaleIso : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ko_kr"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v2, "ko-KR"

    const-string/jumbo v3, "FcstVoiceCommandHelper"

    const-string/jumbo v4, "set locale to : RecognizerConstants.LOCALE_KOREAN"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->stopListening()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    return-void
.end method

.method public onBeginningOfSpeech()V
    .locals 2

    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "onBeginningOfSpeech"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBufferReceived([S)V
    .locals 2

    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "onBufferReceived"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "FcstVoiceCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->stopListening()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->cancelRecognition()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onErrorString(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "FcstVoiceCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onErrorString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->stopListening()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->cancelRecognition()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPartialResults(Ljava/util/Properties;)V
    .locals 3

    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "onPartialResults"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FcstVoiceCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPartial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "utterance"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "onReadyForSpeech"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResults(Ljava/util/Properties;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->stopListening()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->cancelRecognition()V

    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "onResults"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FcstVoiceCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SampleActivity : onResults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "utterance"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    const-string/jumbo v1, "utterance"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;->onResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRmsChanged(I)V
    .locals 2

    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "onRmsChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startListenering()V
    .locals 11

    const-string/jumbo v1, "FcstVoiceCommandHelper"

    const-string/jumbo v2, "reqeust startListenering"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v10, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    const/4 v6, 0x0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v7

    move-object v0, v10

    :goto_1
    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v0, 0x0

    :cond_1
    :goto_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v7

    goto :goto_1
.end method

.method public stopListenering()V
    .locals 2

    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "stopListenering"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->stopListening()V

    return-void
.end method
