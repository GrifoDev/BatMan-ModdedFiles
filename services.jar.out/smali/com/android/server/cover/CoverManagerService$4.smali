.class Lcom/android/server/cover/CoverManagerService$4;
.super Ljava/lang/Object;
.source "CoverManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "onLedCoverServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {p2}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ISViewCoverBaseService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/cover/CoverManagerService;->-set1(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/ISViewCoverBaseService;)Lcom/samsung/android/cover/ISViewCoverBaseService;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerService;->-get4(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/ISViewCoverBaseService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerService;->-get4(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/ISViewCoverBaseService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v2}, Lcom/android/server/cover/CoverManagerService;->-get2(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/cover/CoverManagerService;->-wrap2(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "Remote LedCoverService error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "onLedCoverServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/cover/CoverManagerService;->-set1(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/ISViewCoverBaseService;)Lcom/samsung/android/cover/ISViewCoverBaseService;

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->-get2(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->-get5(Lcom/android/server/cover/CoverManagerService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/cover/CoverManagerService;->-set2(Lcom/android/server/cover/CoverManagerService;I)I

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->-get5(Lcom/android/server/cover/CoverManagerService;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    const-string/jumbo v0, "CoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LedCoverService disconnected one more time (total "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v2}, Lcom/android/server/cover/CoverManagerService;->-get5(Lcom/android/server/cover/CoverManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " times). Restarting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$4;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->-wrap0(Lcom/android/server/cover/CoverManagerService;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "LedCoverService disconnected too many times without reason. Giving up on it..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
