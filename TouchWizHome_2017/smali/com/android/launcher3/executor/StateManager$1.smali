.class Lcom/android/launcher3/executor/StateManager$1;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/executor/StateManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/executor/StateManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/StateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/executor/StateManager$1;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 4

    invoke-static {}, Lcom/android/launcher3/executor/StateManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onParamFillingReceived() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/StateManager$1;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v3}, Lcom/android/launcher3/executor/StateManager;->access$200(Lcom/android/launcher3/executor/StateManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/executor/StateManager$1;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v1}, Lcom/android/launcher3/executor/StateManager;->access$200(Lcom/android/launcher3/executor/StateManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->onParamFillingReceived(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    move-result v1

    return v1
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/launcher3/executor/StateManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRuleCanceled() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 4

    invoke-static {}, Lcom/android/launcher3/executor/StateManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenStatesRequested() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/executor/StateManager$1;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v3}, Lcom/android/launcher3/executor/StateManager;->access$200(Lcom/android/launcher3/executor/StateManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    iget-object v1, p0, Lcom/android/launcher3/executor/StateManager$1;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v1}, Lcom/android/launcher3/executor/StateManager;->access$200(Lcom/android/launcher3/executor/StateManager;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/executor/StateManager$1;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v0, p1}, Lcom/android/launcher3/executor/StateManager;->access$000(Lcom/android/launcher3/executor/StateManager;Lcom/samsung/android/sdk/bixby/data/State;)V

    return-void
.end method
