.class public Lcom/android/launcher3/util/SSecureUpdater;
.super Ljava/lang/Object;
.source "SSecureUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/SSecureUpdater$SSecureAppStateChangeReceiver;,
        Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;,
        Lcom/android/launcher3/util/SSecureUpdater$SingletonHolder;
    }
.end annotation


# static fields
.field private static final ACTION_SSECURE_UPDATE:Ljava/lang/String; = "com.samsung.applock.intent.action.SSECURE_UPDATE"

.field private static final TAG:Ljava/lang/String; = "SSecureUpdater"


# instance fields
.field private isAppLockEnable:Z

.field private mAppContext:Landroid/content/Context;

.field private mAppStateReceiver:Lcom/android/launcher3/util/SSecureUpdater$SSecureAppStateChangeReceiver;

.field private mStateReceiver:Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/launcher3/util/SSecureUpdater;->isAppLockEnable:Z

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/util/SSecureUpdater;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/launcher3/util/SSecureUpdater;->isAppLockEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSSecureSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher3/util/SSecureUpdater;->isAppLockEnable:Z

    new-instance v0, Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;-><init>(Lcom/android/launcher3/util/SSecureUpdater;Lcom/android/launcher3/util/SSecureUpdater$1;)V

    iput-object v0, p0, Lcom/android/launcher3/util/SSecureUpdater;->mStateReceiver:Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;

    new-instance v0, Lcom/android/launcher3/util/SSecureUpdater$SSecureAppStateChangeReceiver;

    invoke-direct {v0, v2}, Lcom/android/launcher3/util/SSecureUpdater$SSecureAppStateChangeReceiver;-><init>(Lcom/android/launcher3/util/SSecureUpdater$1;)V

    iput-object v0, p0, Lcom/android/launcher3/util/SSecureUpdater;->mAppStateReceiver:Lcom/android/launcher3/util/SSecureUpdater$SSecureAppStateChangeReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/util/SSecureUpdater$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/SSecureUpdater;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/util/SSecureUpdater;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/util/SSecureUpdater;->isAppLockEnable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/launcher3/util/SSecureUpdater;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/util/SSecureUpdater;->isAppLockEnable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/util/SSecureUpdater;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/SSecureUpdater;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/launcher3/util/SSecureUpdater;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/util/SSecureUpdater$SingletonHolder;->access$100()Lcom/android/launcher3/util/SSecureUpdater;

    move-result-object v0

    return-object v0
.end method

.method private isAppLockEnable()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/util/SSecureUpdater;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "app_lock_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public onDestroy()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/util/SSecureUpdater;->mAppStateReceiver:Lcom/android/launcher3/util/SSecureUpdater$SSecureAppStateChangeReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/SSecureUpdater;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/util/SSecureUpdater;->mAppStateReceiver:Lcom/android/launcher3/util/SSecureUpdater$SSecureAppStateChangeReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/util/SSecureUpdater;->mStateReceiver:Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/util/SSecureUpdater;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/util/SSecureUpdater;->mStateReceiver:Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SSecureUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not unregister a non registered receiver :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setup()V
    .locals 6

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/util/SSecureUpdater;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/util/SSecureUpdater;->mStateReceiver:Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;

    const-string v4, "com.samsung.applock.permission.STATUSCHANGED"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.applock.intent.action.SSECURE_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/util/SSecureUpdater;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/util/SSecureUpdater;->mAppStateReceiver:Lcom/android/launcher3/util/SSecureUpdater$SSecureAppStateChangeReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
