.class Lcom/android/launcher3/executor/StateManager$2;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;


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

    iput-object p1, p0, Lcom/android/launcher3/executor/StateManager$2;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 3

    invoke-static {}, Lcom/android/launcher3/executor/StateManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Rule : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/executor/StateManager$2;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v0}, Lcom/android/launcher3/executor/StateManager;->access$300(Lcom/android/launcher3/executor/StateManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isTestMode()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/executor/StateManager;->DEBUG_MODE:Z

    iget-object v0, p0, Lcom/android/launcher3/executor/StateManager$2;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v0, p1}, Lcom/android/launcher3/executor/StateManager;->access$000(Lcom/android/launcher3/executor/StateManager;Lcom/samsung/android/sdk/bixby/data/State;)V

    return-void
.end method
