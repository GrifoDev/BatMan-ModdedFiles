.class Lcom/android/launcher3/executor/StateManager$3;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Lcom/android/launcher3/executor/StateExecutionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/executor/StateManager;->onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/executor/StateManager;

.field final synthetic val$state:Lcom/samsung/android/sdk/bixby/data/State;

.field final synthetic val$stateHandler:Lcom/android/launcher3/executor/StateHandler;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/StateManager;Lcom/android/launcher3/executor/StateHandler;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/executor/StateManager$3;->this$0:Lcom/android/launcher3/executor/StateManager;

    iput-object p2, p0, Lcom/android/launcher3/executor/StateManager$3;->val$stateHandler:Lcom/android/launcher3/executor/StateHandler;

    iput-object p3, p0, Lcom/android/launcher3/executor/StateManager$3;->val$state:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executionCompleted(Z)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/executor/StateManager$3;->val$stateHandler:Lcom/android/launcher3/executor/StateHandler;

    invoke-interface {v2}, Lcom/android/launcher3/executor/StateHandler;->getNlgRequestInfo()Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/executor/StateManager$3;->val$state:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/executor/StateManager$3;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v2}, Lcom/android/launcher3/executor/StateManager;->access$300(Lcom/android/launcher3/executor/StateManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    invoke-static {}, Lcom/android/launcher3/executor/StateManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    const-string v2, "Success - "

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p1, :cond_2

    sget-boolean v2, Lcom/android/launcher3/executor/StateManager;->DEBUG_MODE:Z

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/executor/StateManager$3;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v2}, Lcom/android/launcher3/executor/StateManager;->access$300(Lcom/android/launcher3/executor/StateManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_1
    return-void

    :cond_3
    const-string v2, " Fail - "

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/executor/StateManager$3;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v2}, Lcom/android/launcher3/executor/StateManager;->access$300(Lcom/android/launcher3/executor/StateManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/launcher3/executor/StateManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
