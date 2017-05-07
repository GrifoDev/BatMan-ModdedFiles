.class public abstract Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;
.super Ljava/lang/Object;
.source "AbsServiceStatusChecker.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$ServiceStatusConnection;,
        Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsServiceStatusChecker"


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;->assertMainThread()V

    return-void
.end method

.method private assertMainThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method protected checkServiceStatus(Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;Landroid/content/Intent;)V
    .locals 4

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$ServiceStatusConnection;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$ServiceStatusConnection;-><init>(Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;)V

    iget-object v2, p0, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$1;

    invoke-direct {v3, p0, p1}, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$1;-><init>(Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected abstract getStatus(Landroid/os/IBinder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
