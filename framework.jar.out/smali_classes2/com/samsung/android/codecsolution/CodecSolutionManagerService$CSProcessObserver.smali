.class Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "CodecSolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/codecsolution/CodecSolutionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CSProcessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;->updateTopProcessName()V

    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public updateTopProcessName()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v3}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get0(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/app/ActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "CodecSolution"

    const-string/jumbo v4, "runningTaskInfoList is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v3, v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set3(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "CodecSolution"

    const-string/jumbo v4, "runningTaskInfoList is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v3, v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set3(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_2

    const-string/jumbo v3, "CodecSolution"

    const-string/jumbo v4, "runningTaskInfo is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v3, v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set3(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_2
    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v3, "CodecSolution"

    const-string/jumbo v4, "topName is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v3, v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set3(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v3, v2}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set3(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
