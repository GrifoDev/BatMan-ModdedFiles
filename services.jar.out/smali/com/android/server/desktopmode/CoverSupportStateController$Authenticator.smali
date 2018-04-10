.class Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;
.super Landroid/content/BroadcastReceiver;
.source "CoverSupportStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/CoverSupportStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Authenticator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/CoverSupportStateController;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/CoverSupportStateController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/CoverSupportStateController;Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;-><init>(Lcom/android/server/desktopmode/CoverSupportStateController;)V

    return-void
.end method


# virtual methods
.method initialize()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;->isAuthNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get2(Lcom/android/server/desktopmode/CoverSupportStateController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.android.intent.action.ACCESSORY_AUTHENTICATION_STOPPED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;->setAuthComplete()V

    goto :goto_0
.end method

.method isAuthNeeded()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "input"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService;

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    const/16 v4, -0x100

    const/16 v5, 0x1b

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive(), action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;->setAuthComplete()V

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get2(Lcom/android/server/desktopmode/CoverSupportStateController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method setAuthComplete()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get7(Lcom/android/server/desktopmode/CoverSupportStateController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get1(Lcom/android/server/desktopmode/CoverSupportStateController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/CoverSupportStateController;->-set0(Lcom/android/server/desktopmode/CoverSupportStateController;Z)Z

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-wrap0(Lcom/android/server/desktopmode/CoverSupportStateController;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
