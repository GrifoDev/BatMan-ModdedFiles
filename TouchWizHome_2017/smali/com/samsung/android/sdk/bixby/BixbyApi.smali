.class public Lcom/samsung/android/sdk/bixby/BixbyApi;
.super Ljava/lang/Object;
.source "BixbyApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$CommonStateListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;
    }
.end annotation


# static fields
.field static final CM_ACTION:Ljava/lang/String; = "com.samsung.android.rubin.app.intent.action.CM_LOGGING"

.field private static final CM_PACKAGE:Ljava/lang/String; = "com.samsung.android.rubin.app"

.field private static final DEBUG:Z

.field static final RESULT_CODE_APP_CONTEXT:Ljava/lang/String; = "esem_context_result"

.field static final RESULT_CODE_CHATTY_MODE:Ljava/lang/String; = "esem_chatty_mode_result"

.field static final RESULT_CODE_CHATTY_MODE_CANCEL:Ljava/lang/String; = "esem_cancel_chatty_mode"

.field static final RESULT_CODE_CLIENT_CONTROL:Ljava/lang/String; = "esem_client_control"

.field static final RESULT_CODE_LOG_STATE:Ljava/lang/String; = "esem_state_log"

.field static final RESULT_CODE_NLG:Ljava/lang/String; = "esem_request_nlg"

.field static final RESULT_CODE_PARAM_FILLING:Ljava/lang/String; = "esem_param_filling_result"

.field static final RESULT_CODE_SPLIT_STATE:Ljava/lang/String; = "esem_split_state_result"

.field static final RESULT_CODE_STATE_COMMAND:Ljava/lang/String; = "state_command_result"

.field static final RESULT_CODE_TTS:Ljava/lang/String; = "esem_request_tts"

.field private static final SEQ_NUM_FIRST:I = 0x1

.field private static final SEQ_NUM_RULE_CANCEL:I = -0x1

.field private static final SEQ_NUM_TEST:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field static final VER:Ljava/lang/String; = "_0.2.0"

.field private static mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;


# instance fields
.field private mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

.field private mActiveAppName:Ljava/lang/String;

.field private mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

.field private mIsLandingKeyboardOffMode:Z

.field private mIsPartiallyLanded:Z

.field private mIsRuleRunning:Z

.field private mIsTestMode:Z

.field private mIsTestRunning:Z

.field private mLastReceivedStateCmd:Lcom/samsung/android/sdk/bixby/data/State;

.field private mLastScreenStateInfo:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

.field private mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

.field private mPackageVersionName:Ljava/lang/String;

.field private mPathRuleInfo:Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

.field private mResponseCallback:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

.field private mSendStateRetryCount:I

.field private mSendStateRunnable:Ljava/lang/Runnable;

.field private mStartListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

.field mStateCommandJsonFromBa:Ljava/lang/String;

.field private mTestListener:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_0.2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastScreenStateInfo:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsTestMode:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsTestRunning:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsRuleRunning:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastReceivedStateCmd:Lcom/samsung/android/sdk/bixby/data/State;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsLandingKeyboardOffMode:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mPathRuleInfo:Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsPartiallyLanded:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/bixby/BixbyApi;)Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/bixby/BixbyApi;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRetryCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/samsung/android/sdk/bixby/BixbyApi;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRetryCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/bixby/BixbyApi;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 7

    const-class v4, Lcom/samsung/android/sdk/bixby/BixbyApi;

    monitor-enter v4

    if-nez p0, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Context cannot be null."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    :try_start_1
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v3, :cond_1

    new-instance v3, Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-direct {v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;-><init>()V

    sput-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;

    :cond_1
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setContext(Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v3, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setActiveApp(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setVersionName(Ljava/lang/String;)V

    sget-boolean v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createInstance: Version Name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    :try_start_3
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return-object v3

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createInstance: cannot get versionName from package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string v5, ""

    invoke-direct {v3, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setVersionName(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private createIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.rubin.app.intent.action.CM_LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.rubin.app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appName"

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mActiveAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appVersion"

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mPackageVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "timestamp"

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method private createLogStateData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\"appName\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mActiveAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"logType\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"stateIds\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-class v1, Lcom/samsung/android/sdk/bixby/BixbyApi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Instance is null. please call createInstance() for the first time."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private getNlgStateInfo()Ljava/lang/String;
    .locals 7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-interface {v4}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    if-ne v0, v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Partial Landing handler requires the current state ID. onScreenStatesRequested() is not allowed to return null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->getStates()Ljava/util/LinkedHashSet;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getTestParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v6

    :cond_0
    :goto_1
    return-object v4

    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, v6

    goto :goto_1
.end method

.method private getTimestamp()Ljava/lang/Long;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private handleTestResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setRuleRunning(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isTestRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mTestListener:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;->onTearDown()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setTestRunning(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setTestRunning(Z)V

    goto :goto_0
.end method

.method private handleTestState(Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsTestMode:Z

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v5, "handleTestState: SeqNo 0 found. isTestMode true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "setupParameters"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "setupParameters"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getTestParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mTestListener:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mTestListener:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    invoke-interface {v4, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;->onSetup(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleTestState: Invalid JSON:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private hideKeyboard()Z
    .locals 7

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v5, "hideKeyboard: entered."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isLandingKeyboardOffMode()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLandingKeyboardOffMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isLandingKeyboardOffMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "android.view.inputmethod.InputMethodManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    const-string v4, "semForceHideSoftInput"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideKeyboard: result - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideKeyboard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideKeyboard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideKeyboard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_3
    move-exception v0

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideKeyboard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static isBixbySupported()Z
    .locals 11

    const/4 v7, 0x0

    :try_start_0
    const-string v6, "com.samsung.android.feature.SemFloatingFeature"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "getInstance"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "getBoolean"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BIXBY"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isBixbySupported:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v3

    :catch_0
    move-exception v0

    :goto_1
    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v8, "isBixbySupported: Can\'t read information on Bixby support."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_1
.end method

.method private isLandingKeyboardOffMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsLandingKeyboardOffMode:Z

    return v0
.end method

.method private logState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Log value cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createLogStateData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "esem_state_log"

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "stateIds"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v4, "logState: Can\'t send log to BixbyAgent."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mResponseCallback:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mResponseCallback:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "esem_state_log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "esem_cancel_chatty_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v1, "sendCommandToBa: Bixby Agent is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mPackageVersionName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearInterimStateListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastScreenStateInfo:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    goto :goto_0
.end method

.method public extendTimeout(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "extendTimeout: Path Rule is not running."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "extendTimeout: Timeout value is not in the valid range. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"pathRuleTimeout\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "esem_client_control"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getActiveApp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mActiveAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathRuleInfo()Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsRuleRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mPathRuleInfo:Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleLandingKeyboardOffMode(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const-string v0, "isLandingKeyboardOffMode"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "isLandingKeyboardOffMode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "isLandingKeyboardOffMode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setLandingKeyboardOffMode(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setLandingKeyboardOffMode(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get isLandingKeyboardOffMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setLandingKeyboardOffMode(Z)V

    goto :goto_0
.end method

.method handlePathRuleInfo(Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mPathRuleInfo:Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;->onPathRuleStarted(Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;)V

    :cond_0
    return-void
.end method

.method public isPartiallyLanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsPartiallyLanded:Z

    return v0
.end method

.method public isRuleRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsRuleRunning:Z

    return v0
.end method

.method public isTestMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsTestMode:Z

    return v0
.end method

.method public isTestRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsTestRunning:Z

    return v0
.end method

.method public logEnterState(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "state_enter"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logEnterStates(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "state_enter"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logExitState(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "state_exit"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logExitStates(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "state_exit"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logOutputParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v1, "output_param"

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "paramName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "paramValue"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method onServiceBound(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;->onServiceBound(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method onServiceCreated()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;->onServiceCreated()V

    goto :goto_0
.end method

.method onServiceDestroyed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;->onServiceDestroyed()V

    goto :goto_0
.end method

.method onServiceUnbound(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;->onServiceUnbound(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method requestContext()V
    .locals 7

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-interface {v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    move-result-object v3

    const-string v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"appName\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mActiveAppName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    if-eq v3, v5, :cond_3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    if-eqz v5, :cond_1

    const-string v5, ",\"isChattyModeSupported\":true"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v5, "}"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\"result\": \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\"appContext\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "esem_context_result"

    invoke-direct {p0, v5, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v6, "requestContext: No state ids."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v6, "requestContext: STATE_NOT_APPLICABLE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"appName\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mActiveAppName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v6, "requestContext: InterimListener is not set. "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastScreenStateInfo:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    sget-object v6, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    if-eq v5, v6, :cond_0

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v6, "requestContext: Lastly backed up Screen State info used."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastScreenStateInfo:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",\"isBackedUpState\":true"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_5
    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v6, "requestContext: No state ids."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\"result\": \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    return-void
.end method

.method public requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "NlgRequestInfo cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"currentStateIds\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getNlgStateInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\"requestedAppName\":\"%s\",%s,%s,%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mActiveAppName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "esem_request_nlg"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestTts(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "text cannot be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v1, "\"text\":\"%s\",%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "esem_request_tts"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method sendChatText(Ljava/lang/String;Z)V
    .locals 3

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "sendChatText: ChattyModeListener is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v1, "esem_chatty_mode_result"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;->onChatTextReceived(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method sendMultiStates(Lorg/json/JSONArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, ""

    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    if-nez v4, :cond_2

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v5, "sendMultiStates: MultiPathRuleListener is null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const-string v4, "esem_split_state_result"

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    invoke-interface {v4, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;->onPathRuleSplit(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_1
.end method

.method sendParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "esem_param_filling_result"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "ParamFilling: InterimListener is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastReceivedStateCmd:Lcom/samsung/android/sdk/bixby/data/State;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v1, "Invalid sendResponse call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    :cond_1
    :goto_1
    const-string v0, "state_command_result"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastReceivedStateCmd:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->handleTestResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Lcom/samsung/android/sdk/bixby/data/State;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastReceivedStateCmd:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setRuleRunning(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setTestRunning(Z)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->hideKeyboard()Z

    :cond_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setPartiallyLanded(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastReceivedStateCmd:Lcom/samsung/android/sdk/bixby/data/State;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    goto :goto_1
.end method

.method sendState(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setRuleRunning(Z)V

    invoke-static {p1}, Lcom/samsung/android/sdk/bixby/StateReader;->read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastReceivedStateCmd:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->handleTestState(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStartListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStartListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;->onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "sendState: The first state is arrived but StartListener has not been set."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "state_command_result"

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setRuleRunning(Z)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->hideKeyboard()Z

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStartListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    if-nez v1, :cond_4

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "sendState: No listener is set."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onRuleCanceled(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStartListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStartListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;->onRuleCanceled(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "sendState: Remove pending state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_7
    iput v3, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRetryCount:I

    new-instance v1, Lcom/samsung/android/sdk/bixby/BixbyApi$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$1;-><init>(Lcom/samsung/android/sdk/bixby/BixbyApi;Lcom/samsung/android/sdk/bixby/data/State;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsTestMode:Z

    goto/16 :goto_0
.end method

.method public setAbstractEventMonitor(Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    return-void
.end method

.method public setActiveApp(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "appName should not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mActiveAppName:Ljava/lang/String;

    return-void
.end method

.method public setAppTouchable(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "setAppTouchable: Path Rule is not running."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"appTouchable\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "esem_client_control"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAppVisible(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "setAppVisible: Path Rule is not running."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"appVisible\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "esem_client_control"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setChattyModeListener(Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string v0, "esem_cancel_chatty_mode"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    return-void
.end method

.method public setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    return-void
.end method

.method setLandingKeyboardOffMode(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsLandingKeyboardOffMode:Z

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLandingKeyboardOffMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsLandingKeyboardOffMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMultiPathRuleListener(Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    return-void
.end method

.method setPartiallyLanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsPartiallyLanded:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->hideKeyboard()Z

    :cond_0
    return-void
.end method

.method setResponseCallback(Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mResponseCallback:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    return-void
.end method

.method setRuleRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsRuleRunning:Z

    return-void
.end method

.method public setStartStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStartListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    return-void
.end method

.method public setTestListener(Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mTestListener:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    return-void
.end method

.method setTestRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsTestRunning:Z

    return-void
.end method
