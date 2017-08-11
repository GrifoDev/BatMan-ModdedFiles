.class public Lcom/samsung/android/codecsolution/CodecSolutionManagerService;
.super Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;
.source "CodecSolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/codecsolution/CodecSolutionManagerService$1;,
        Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;,
        Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CodecSolutionReceiver;
    }
.end annotation


# static fields
.field private static final CLASS_MHDR_META_SERVICE:Ljava/lang/String; = "com.samsung.android.mhdrservice.MhdrMetaService"

.field private static final CLASS_MHDR_PARAM_SERVICE:Ljava/lang/String; = "com.samsung.android.mhdrservice.MhdrParamService"

.field private static final CLASS_MHDR_SERVICE:Ljava/lang/String; = "com.samsung.android.mhdrservice.MhdrService"

.field private static final CLASS_SMARTFIT_SERVICE:Ljava/lang/String; = "com.samsung.android.smartfitting.SmartFittingService"

.field private static final HANDLER_MSG_LOGGING_EVENT:I = 0x384

.field private static final HANDLER_MSG_SEND_BROADCAST:I = 0x320

.field private static final HANDLER_MSG_SET_META_MHDR_SERVICE:I = 0x67

.field private static final HANDLER_MSG_SET_PARAM_MHDR_SERVICE:I = 0x66

.field private static final HANDLER_MSG_START_MHDR_SERVICE:I = 0x64

.field private static final HANDLER_MSG_START_SMART_FITTING_SERVICE:I = 0xc8

.field private static final HANDLER_MSG_STOP_MHDR_SERVICE:I = 0x65

.field private static final HANDLER_MSG_STOP_SMART_FITTING_SERVICE:I = 0xc9

.field private static final INTENT_SMARTFIT_FOUND_BLACK_BAR:Ljava/lang/String; = "com.samsung.intent.action.FOUND_BLACK_BAR"

.field private static final INTENT_SMARTFIT_HIDE_BUTTON:Ljava/lang/String; = "com.samsung.intent.action.HIDE_BUTTON"

.field private static final INTENT_SMARTFIT_SHOW_BUTTON:Ljava/lang/String; = "com.samsung.intent.action.SHOW_BUTTON"

.field private static final PACKAGE_MHDR_SERVICE:Ljava/lang/String; = "com.samsung.android.mhdrservice"

.field private static final PACKAGE_SMARTFIT_SERVICE:Ljava/lang/String; = "com.samsung.android.smartfitting"

.field private static final TAG:Ljava/lang/String; = "CodecSolution"

.field private static final TOP_IS_IN_WHITELIST:I = 0x1

.field private static final TOP_IS_NOT_IN_WHITELIST:I = 0x0

.field private static final TOP_IS_SAMSUNG_VIDEO_APP:I = 0x2

.field public static final VERSION:Ljava/lang/String; = "1.1"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mActivityManagerService:Landroid/app/IActivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsBlackbar:I

.field private mIsBootCompleted:Z

.field private mProcessObserver:Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;

.field private mSecVideoUseSmartFitting:I

.field private mSmartFittingConnection:Landroid/content/ServiceConnection;

.field private mSmartFittingMode:I

.field private mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;

.field private mTopActivityName:Ljava/lang/String;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/app/IActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mActivityManagerService:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsBootCompleted:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mProcessObserver:Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingMode:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Lcom/samsung/android/smartfitting/ISmartFittingService;)Lcom/samsung/android/smartfitting/ISmartFittingService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mTopActivityName:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;-><init>()V

    new-instance v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;-><init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mProcessObserver:Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;

    iput-object v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;

    new-instance v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$1;-><init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingConnection:Landroid/content/ServiceConnection;

    const-string/jumbo v0, "CodecSolution"

    const-string/jumbo v1, "create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mActivityManagerService:Landroid/app/IActivityManager;

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mWindowManager:Landroid/view/WindowManager;

    iput v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingMode:I

    iput v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsBlackbar:I

    iput v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSecVideoUseSmartFitting:I

    iput-object v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mTopActivityName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsBootCompleted:Z

    new-instance v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CodecSolutionReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CodecSolutionReceiver;-><init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CodecSolutionHandler"

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;-><init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "secmm.codecsolution.ready"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkblackbarstatus()I
    .locals 2

    const-string/jumbo v0, "CodecSolution"

    const-string/jumbo v1, "checkblackbarstatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsBlackbar:I

    return v0
.end method

.method public debug()V
    .locals 2

    const-string/jumbo v0, "CodecSolution"

    const-string/jumbo v1, "debug!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getSmartFittingMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingMode:I

    return v0
.end method

.method public getWhiteListStatus()I
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string/jumbo v6, "CodecSolution"

    const-string/jumbo v7, "getWhiteListStatus"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->isDesktopMode()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "CodecSolution"

    const-string/jumbo v7, "In Knox Desktop mode."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->isSupportedRatio()Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "CodecSolution"

    const-string/jumbo v7, "Not supported ratio."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mTopActivityName:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string/jumbo v6, "CodecSolution"

    const-string/jumbo v7, "Top is null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_2
    const-string/jumbo v6, "CodecSolution"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Top : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "com.samsung.android.video"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "com.samsung.android.onlinevideo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "com.samsung.android.videolist"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    iget v6, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSecVideoUseSmartFitting:I

    if-nez v6, :cond_4

    const-string/jumbo v6, "CodecSolution"

    const-string/jumbo v7, "SEC Video don\'t use SmartFitting."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_4
    return v11

    :cond_5
    new-instance v2, Lcom/samsung/android/codecsolution/SCPMHelper;

    iget-object v6, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/codecsolution/SCPMHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/codecsolution/SCPMHelper;->getPackageInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_7

    const-string/jumbo v6, "CodecSolution"

    const-string/jumbo v7, "PackageInfo is null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "com.google.android.youtube"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    return v10

    :cond_6
    return v9

    :cond_7
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v6, "CodecSolution"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "c:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " u:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " t:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "yes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    return v9

    :cond_8
    const-string/jumbo v6, "sec"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSecVideoUseSmartFitting:I

    if-nez v6, :cond_9

    const-string/jumbo v6, "CodecSolution"

    const-string/jumbo v7, "SEC Video don\'t use SmartFitting."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_9
    return v11

    :cond_a
    add-int/lit8 v6, v3, 0x1

    return v6
.end method

.method public hideSmartFittingButton()V
    .locals 4

    const-string/jumbo v2, "CodecSolution"

    const-string/jumbo v3, "hideSmartFittingButton : sendBroadcast com.samsung.intent.action.HIDE_BUTTON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x320

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "intent"

    const-string/jumbo v3, "com.samsung.intent.action.HIDE_BUTTON"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public isDesktopMode()Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, "isDesktopMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v0, :cond_0

    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, " : Can\'t get the DesktopModeManager."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, " : In Knox Desktop mode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3
.end method

.method public isSupportedRatio()Z
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v4, "CodecSolution"

    const-string/jumbo v5, "isSupportedRatio()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    if-nez v2, :cond_0

    const-string/jumbo v4, "CodecSolution"

    const-string/jumbo v5, "point is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_1

    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v1, v2, Landroid/graphics/Point;->y:I

    :goto_0
    int-to-double v4, v0

    int-to-double v6, v1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string/jumbo v4, "CodecSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "a:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " b:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " r:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x3ffdc28f5c28f5c3L    # 1.86

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    const/4 v4, 0x1

    return v4

    :cond_1
    iget v0, v2, Landroid/graphics/Point;->y:I

    iget v1, v2, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_2
    return v8
.end method

.method public reportMediaStatisticsEvent(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "CodecSolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportMediaStatisticsEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x384

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMhdrEnable(I)V
    .locals 6

    const/4 v2, 0x0

    const-string/jumbo v3, "CodecSolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMhdrEnable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "HDR-ENABLE"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMhdrMetaData(IIII)V
    .locals 5

    const-string/jumbo v2, "CodecSolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maxAvgLight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "CodecSolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maxContentLight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "CodecSolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maxDispL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "CodecSolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "minDispL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "MaxAvgLight"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "MaxContentLight"

    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "MaxDispL"

    invoke-virtual {v0, v2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "MinDispL"

    invoke-virtual {v0, v2, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setSecVideoUseSmartFitting(I)V
    .locals 3

    const-string/jumbo v0, "CodecSolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecVideoUseSmartFitting("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSecVideoUseSmartFitting:I

    return-void
.end method

.method public setSmartFittingMode(I)V
    .locals 3

    const-string/jumbo v0, "CodecSolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartFittingMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingMode:I

    return-void
.end method

.method public setWhiteListStatus(I)V
    .locals 3

    const-string/jumbo v0, "CodecSolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWhiteListStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showSmartFittingButton()V
    .locals 4

    const-string/jumbo v2, "CodecSolution"

    const-string/jumbo v3, "showSmartFittingButton : sendBroadcast com.samsung.intent.action.SHOW_BUTTON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x320

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "intent"

    const-string/jumbo v3, "com.samsung.intent.action.SHOW_BUTTON"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startMhdrService(ILjava/lang/String;I)V
    .locals 7

    const/4 v3, 0x0

    const-string/jumbo v4, "CodecSolution"

    const-string/jumbo v5, "startMhdrService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "CodecSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.samsung.permission.USE_MHDR_SERVICE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v4, "CodecSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "permission : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "CodecSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "calling uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "CodecSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "my uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "pid"

    invoke-virtual {v0, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "vendor"

    invoke-virtual {v0, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "initialOff"

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized startSmartFittingService()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, "startSmartFittingService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stopMhdrService()V
    .locals 3

    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, "stopMhdrService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public declared-synchronized stopSmartFittingService()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, "stopSmartFittingService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateblackbarstatus(I)V
    .locals 4

    const-string/jumbo v2, "CodecSolution"

    const-string/jumbo v3, "updateblackbarstatus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsBlackbar:I

    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x320

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "intent"

    const-string/jumbo v3, "com.samsung.intent.action.FOUND_BLACK_BAR"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
