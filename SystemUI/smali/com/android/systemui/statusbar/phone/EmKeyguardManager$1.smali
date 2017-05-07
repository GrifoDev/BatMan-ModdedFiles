.class Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;
.super Ljava/lang/Object;
.source "EmKeyguardManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/EmKeyguardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;->this$0:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const-string/jumbo v1, "Lockscreen"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "EmKeyguardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateReceived() stateId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isDeviceInteractive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;->this$0:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->-get2(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isKeyguardShowing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;->this$0:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->-get1(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)Lcom/android/systemui/statusbar/phone/EmKeyguardManager$BixbyKeyguardCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$BixbyKeyguardCallback;->isKeyguardShowing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;->this$0:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->-get2(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "Root"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;->this$0:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->-get2(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "EmKeyguardManager"

    const-string/jumbo v3, "mBixbyCallback.onUnlockExecuted(), SecurityLock, Set, no"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SecurityLock"

    const-string/jumbo v3, "Set"

    const-string/jumbo v4, "no"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;->this$0:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->-get1(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)Lcom/android/systemui/statusbar/phone/EmKeyguardManager$BixbyKeyguardCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$BixbyKeyguardCallback;->onUnlockExecuted()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;->this$0:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->-get0(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;->this$0:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->-get0(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "LockscreenSecuredLock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;->this$0:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->-get2(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "EmKeyguardManager"

    const-string/jumbo v3, "mBixbyCallback.onUnlockExecuted(), SecurityLock, Set, yes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SecurityLock"

    const-string/jumbo v3, "Set"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;->this$0:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->-get1(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)Lcom/android/systemui/statusbar/phone/EmKeyguardManager$BixbyKeyguardCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$BixbyKeyguardCallback;->onUnlockExecuted()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;->this$0:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->-get0(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EmKeyguardManager$1;->this$0:Lcom/android/systemui/statusbar/phone/EmKeyguardManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/EmKeyguardManager;->-get0(Lcom/android/systemui/statusbar/phone/EmKeyguardManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "MusicControllerWidget"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "MusicControllerWidgetFullPage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "TodayscheduleWidget"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "TodayscheduleWidgetFullPage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "EmKeyguardManager"

    const-string/jumbo v3, "It\'s secured lock !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "EmKeyguardManager"

    const-string/jumbo v3, "It\'s not secured lock !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v2, "EmKeyguardManager"

    const-string/jumbo v3, "There is no lockscreen already !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
