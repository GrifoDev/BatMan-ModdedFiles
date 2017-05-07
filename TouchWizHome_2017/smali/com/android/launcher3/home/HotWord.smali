.class public Lcom/android/launcher3/home/HotWord;
.super Ljava/lang/Object;
.source "HotWord.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Home.HotWord"

    sput-object v0, Lcom/android/launcher3/home/HotWord;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HotWord;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/home/HotWord;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v0, Lcom/google/android/hotword/client/HotwordServiceClient;

    iget-object v1, p0, Lcom/android/launcher3/home/HotWord;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HotWord;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotWord;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotWord;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->onDetachedFromWindow()V

    return-void
.end method

.method public setEnableHotWord(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/HotWord;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/HotWord;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/launcher3/home/HotWord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableHotWord enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/home/HotWord;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v0, p1}, Lcom/google/android/hotword/client/HotwordServiceClient;->requestHotwordDetection(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HotWord;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient;->requestHotwordDetection(Z)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/launcher3/home/HotWord;->TAG:Ljava/lang/String;

    const-string v1, "setEnableHotWord is called by other thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
