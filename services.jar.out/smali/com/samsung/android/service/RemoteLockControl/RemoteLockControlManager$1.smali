.class Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;
.super Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;
.source "RemoteLockControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "RlcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeRemoteLockState data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public checkRemoteLockPassword(Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x1

    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v2, "checkRemoteLockPassword"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeUnlocking(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$000()Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v2, "RemoteLockControlListener is null, can\'t call onUnlockedByPasscode()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error in RLC Manager internally"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$000()Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;->onUnlockedByPasscode()V
    :try_end_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
