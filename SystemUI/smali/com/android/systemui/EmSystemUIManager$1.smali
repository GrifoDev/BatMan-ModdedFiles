.class Lcom/android/systemui/EmSystemUIManager$1;
.super Ljava/lang/Object;
.source "EmSystemUIManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/EmSystemUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/EmSystemUIManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/EmSystemUIManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/EmSystemUIManager$1;->this$0:Lcom/android/systemui/EmSystemUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getAppName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "EmSystemUIManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "appName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " stateId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ruleId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/EmSystemUIManager$1;->this$0:Lcom/android/systemui/EmSystemUIManager;

    invoke-static {v3}, Lcom/android/systemui/EmSystemUIManager;->-get0(Lcom/android/systemui/EmSystemUIManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    const-string/jumbo v3, "SystemUI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/EmSystemUIManager$1;->this$0:Lcom/android/systemui/EmSystemUIManager;

    invoke-static {v3, p1}, Lcom/android/systemui/EmSystemUIManager;->-wrap2(Lcom/android/systemui/EmSystemUIManager;Lcom/samsung/android/sdk/bixby/data/State;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v3, "Notification"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "Recents"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/EmSystemUIManager$1;->this$0:Lcom/android/systemui/EmSystemUIManager;

    invoke-static {v3, p1}, Lcom/android/systemui/EmSystemUIManager;->-wrap1(Lcom/android/systemui/EmSystemUIManager;Lcom/samsung/android/sdk/bixby/data/State;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "MultiWindow"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/EmSystemUIManager$1;->this$0:Lcom/android/systemui/EmSystemUIManager;

    invoke-static {v3, p1}, Lcom/android/systemui/EmSystemUIManager;->-wrap0(Lcom/android/systemui/EmSystemUIManager;Lcom/samsung/android/sdk/bixby/data/State;)V

    goto :goto_0
.end method
