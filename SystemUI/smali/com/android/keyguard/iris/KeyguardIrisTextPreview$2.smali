.class Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIrisTextPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/iris/KeyguardIrisTextPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;


# direct methods
.method constructor <init>(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)V

    goto :goto_0
.end method

.method public onDesktopModeChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)V

    return-void
.end method

.method public onFailedUnlockAttemptChanged()V
    .locals 9

    const/16 v8, 0x9

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    const-string/jumbo v2, "KeyguardIrisTextPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFailedUnlockAttemptChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v5, :cond_0

    if-le v0, v8, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    const-string/jumbo v2, "KeyguardIrisTextPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFailedUnlockAttemptChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v5, :cond_2

    if-le v0, v8, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    if-le v0, v5, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttemptsBeforeWipe()I

    move-result v2

    if-ne v2, v6, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_iris_no_match:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;I)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    goto :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_iris_no_match:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v6}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttemptsBeforeWipe()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public onIrisError(ILjava/lang/CharSequence;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowIrisErrorMsg(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap4(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get3(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get6(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get3(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get6(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)V

    goto :goto_0
.end method

.method public onIrisHelp(ILjava/lang/String;)V
    .locals 5

    const/16 v4, -0x9

    const/4 v1, 0x0

    if-ne p1, v4, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq p1, v4, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0, p2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap4(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get3(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get6(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get3(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get6(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0, p2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap3(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;I)V

    goto :goto_0
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0, p1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-set0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "KeyguardIrisTextPreview"

    const-string/jumbo v1, "set text preview - onKeyguardBouncerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)V

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get4(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0, p1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-set1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)V

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2

    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;I)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)V

    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-wrap5(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)V

    :cond_0
    return-void
.end method
