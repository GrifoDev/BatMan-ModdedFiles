.class Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;
.super Ljava/lang/Object;
.source "PaymentManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientBinderDeathReceiver"
.end annotation


# instance fields
.field private mReceiver:Landroid/os/IBinder;

.field final synthetic this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/spay/PaymentManagerService$FrameworkClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deleteClient()V
    .locals 9

    const-string/jumbo v6, "PaymentManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error: Client stopped. Clearing Databstructures for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v8, v8, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const-class v7, Lcom/android/server/spay/PaymentManagerService;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v6, v6, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    if-eqz v6, :cond_0

    new-instance v5, Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v6, v6, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    iget-object v6, v6, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    const/4 v8, 0x0

    iput-object v8, v6, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    :goto_0
    monitor-exit v7

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/spay/TAController;

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/spay/TAController;->unloadTA()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_0
    :try_start_3
    const-string/jumbo v6, "PaymentManagerService"

    const-string/jumbo v8, "deleteClient: commonInfo is null"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v7

    throw v6

    :cond_1
    iget-object v6, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v6, v6, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->this$0:Lcom/android/server/spay/PaymentManagerService;

    invoke-static {v6}, Lcom/android/server/spay/PaymentManagerService;->-get0(Lcom/android/server/spay/PaymentManagerService;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v7, v7, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v6

    move-object v4, v5

    goto :goto_2
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string/jumbo v0, "PaymentManagerService"

    const-string/jumbo v1, "Error: Framework App dead, unloading loaded TAs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    return-void
.end method

.method public setReceiver(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    return-void
.end method
