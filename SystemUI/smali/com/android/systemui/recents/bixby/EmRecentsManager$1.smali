.class Lcom/android/systemui/recents/bixby/EmRecentsManager$1;
.super Ljava/lang/Object;
.source "EmRecentsManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/bixby/EmRecentsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/bixby/EmRecentsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ParamFillingReceived."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-static {v0, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-set0(Lcom/android/systemui/recents/bixby/EmRecentsManager;Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRuleCanceled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-static {v0, v3}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-set0(Lcom/android/systemui/recents/bixby/EmRecentsManager;Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-static {v0, v3}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-set2(Lcom/android/systemui/recents/bixby/EmRecentsManager;Lcom/samsung/android/sdk/bixby/data/State;)Lcom/samsung/android/sdk/bixby/data/State;

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-set1(Lcom/android/systemui/recents/bixby/EmRecentsManager;Z)Z

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-static {v1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-get2(Lcom/android/systemui/recents/bixby/EmRecentsManager;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ScreenStatesRequested:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    invoke-static {}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStateReceived() stateId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ruleId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v4, "Recents"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-static {v4, v3}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-wrap4(Lcom/android/systemui/recents/bixby/EmRecentsManager;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-virtual {v4, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->onOpenRecents(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-static {v4, v1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-wrap3(Lcom/android/systemui/recents/bixby/EmRecentsManager;Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;)V

    sget-object v4, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    invoke-virtual {v4, v1}, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-set0(Lcom/android/systemui/recents/bixby/EmRecentsManager;Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v4, "LaunchAppDirect"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-static {v4, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-wrap1(Lcom/android/systemui/recents/bixby/EmRecentsManager;Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "Exit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-static {v4, v3}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-wrap4(Lcom/android/systemui/recents/bixby/EmRecentsManager;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-static {v4, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-wrap0(Lcom/android/systemui/recents/bixby/EmRecentsManager;Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;->this$0:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-static {v4, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-wrap2(Lcom/android/systemui/recents/bixby/EmRecentsManager;Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to handle the state :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
