.class Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;
.super Ljava/lang/Object;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemBroadcastManager"
.end annotation


# static fields
.field public static final BR_ENROLL:I = 0x1

.field public static final BR_GESTURE:I = 0x2


# instance fields
.field mBrAlways:Landroid/content/BroadcastReceiver;

.field mBrScreenOff:Landroid/content/BroadcastReceiver;

.field mBrScreenOn:Landroid/content/BroadcastReceiver;

.field private mH:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrAlways:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrAlways:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method

.method private setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 4

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemBroadcastManager : setReceiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "SemBroadcastManager : setReceiver : receiver is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "SemBroadcastManager : failed to set receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized add(I)V
    .locals 3

    const/4 v0, 0x1

    monitor-enter p0

    if-ne p1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$3;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$4;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method handleAction(Landroid/content/Intent;)V
    .locals 6

    const/16 v5, -0x2710

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SemBroadcastManager : onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mH:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$5;

    invoke-direct {v3, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$5;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mH:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$6;

    invoke-direct {v3, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$6;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACTION_USER_REMOVED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eq v1, v5, :cond_0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get9(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/fingerprint/-$Lambda$NsdFXKe2P39OH-qCAY_zqOMIIsg$13;

    invoke-direct {v3, v1, p0}, Lcom/android/server/fingerprint/-$Lambda$NsdFXKe2P39OH-qCAY_zqOMIIsg$13;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_fingerprint_FingerprintService$SemBroadcastManager_140177(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintService;->-wrap6(Lcom/android/server/fingerprint/FingerprintService;II)I

    return-void
.end method

.method declared-synchronized remove(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap3(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get10(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
