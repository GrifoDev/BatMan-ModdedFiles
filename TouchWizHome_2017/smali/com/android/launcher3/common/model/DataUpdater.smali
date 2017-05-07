.class public abstract Lcom/android/launcher3/common/model/DataUpdater;
.super Ljava/lang/Object;
.source "DataUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/DataUpdater$UpdaterInterface;
    }
.end annotation


# static fields
.field protected static sContentResolver:Landroid/content/ContentResolver;

.field protected static sContext:Landroid/content/Context;

.field protected static sIconCache:Lcom/android/launcher3/common/model/IconCache;

.field protected static sIsSafeMode:Z

.field protected static sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

.field protected static sLauncherModel:Lcom/android/launcher3/LauncherModel;

.field protected static sPackageManager:Landroid/content/pm/PackageManager;

.field protected static sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

.field protected static sWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher3/common/model/DataUpdater;->sWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected init(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/common/model/DataUpdater;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p1, Lcom/android/launcher3/common/model/DataUpdater;->sContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/common/model/DataUpdater;->sWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataUpdater;->sContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/common/model/DataUpdater;->sIsSafeMode:Z

    invoke-static {p1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataUpdater;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataUpdater;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataUpdater;->sPackageManager:Landroid/content/pm/PackageManager;

    sput-object p3, Lcom/android/launcher3/common/model/DataUpdater;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    sput-object p2, Lcom/android/launcher3/common/model/DataUpdater;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    :cond_0
    return-void
.end method
