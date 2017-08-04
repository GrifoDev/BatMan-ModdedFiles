.class final Lcom/android/launcher3/executor/StateManager$TopViewListener;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Lcom/android/launcher3/proxy/OnLauncherTopViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/executor/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TopViewListener"
.end annotation


# instance fields
.field mPrevViewState:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher3/executor/StateManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/StateManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/executor/StateManager$TopViewListener;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/StateManager$TopViewListener;->mPrevViewState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onLauncherTopViewChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/executor/StateManager$TopViewListener;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {p1}, Lcom/android/launcher3/executor/StateUtils;->getStateIdFromViewId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/executor/StateManager;->access$202(Lcom/android/launcher3/executor/StateManager;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isBixbySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/executor/StateManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLauncherTopViewChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/executor/StateManager$TopViewListener;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v2}, Lcom/android/launcher3/executor/StateManager;->access$200(Lcom/android/launcher3/executor/StateManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/executor/StateManager$TopViewListener;->mPrevViewState:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/executor/StateManager$TopViewListener;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v1}, Lcom/android/launcher3/executor/StateManager;->access$200(Lcom/android/launcher3/executor/StateManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/executor/StateManager$TopViewListener;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v0}, Lcom/android/launcher3/executor/StateManager;->access$300(Lcom/android/launcher3/executor/StateManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/executor/StateManager$TopViewListener;->mPrevViewState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/executor/StateManager$TopViewListener;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v0}, Lcom/android/launcher3/executor/StateManager;->access$200(Lcom/android/launcher3/executor/StateManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/executor/StateManager$TopViewListener;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v0}, Lcom/android/launcher3/executor/StateManager;->access$300(Lcom/android/launcher3/executor/StateManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/executor/StateManager$TopViewListener;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v1}, Lcom/android/launcher3/executor/StateManager;->access$200(Lcom/android/launcher3/executor/StateManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/executor/StateManager$TopViewListener;->this$0:Lcom/android/launcher3/executor/StateManager;

    invoke-static {v0}, Lcom/android/launcher3/executor/StateManager;->access$200(Lcom/android/launcher3/executor/StateManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/executor/StateManager$TopViewListener;->mPrevViewState:Ljava/lang/String;

    :cond_1
    return-void
.end method
