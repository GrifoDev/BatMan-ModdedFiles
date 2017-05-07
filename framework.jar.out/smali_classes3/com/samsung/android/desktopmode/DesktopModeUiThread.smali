.class public Lcom/samsung/android/desktopmode/DesktopModeUiThread;
.super Landroid/os/HandlerThread;
.source "DesktopModeUiThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/samsung/android/desktopmode/DesktopModeUiThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string/jumbo v0, "DesktopModeUiThread"

    const/4 v1, -0x4

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 2

    sget-object v0, Lcom/samsung/android/desktopmode/DesktopModeUiThread;->sInstance:Lcom/samsung/android/desktopmode/DesktopModeUiThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/desktopmode/DesktopModeUiThread;

    invoke-direct {v0}, Lcom/samsung/android/desktopmode/DesktopModeUiThread;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModeUiThread;->sInstance:Lcom/samsung/android/desktopmode/DesktopModeUiThread;

    sget-object v0, Lcom/samsung/android/desktopmode/DesktopModeUiThread;->sInstance:Lcom/samsung/android/desktopmode/DesktopModeUiThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/samsung/android/desktopmode/DesktopModeUiThread;->sInstance:Lcom/samsung/android/desktopmode/DesktopModeUiThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModeUiThread;->sHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    const-class v1, Lcom/samsung/android/desktopmode/DesktopModeUiThread;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModeUiThread;->ensureThreadLocked()V

    sget-object v0, Lcom/samsung/android/desktopmode/DesktopModeUiThread;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
