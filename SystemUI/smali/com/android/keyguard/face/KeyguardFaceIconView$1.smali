.class Lcom/android/keyguard/face/KeyguardFaceIconView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardFaceIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/face/KeyguardFaceIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/face/KeyguardFaceIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-get3(Lcom/android/keyguard/face/KeyguardFaceIconView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/face/KeyguardFaceIconView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-wrap2(Lcom/android/keyguard/face/KeyguardFaceIconView;)V

    goto :goto_0
.end method

.method public onDesktopModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-wrap2(Lcom/android/keyguard/face/KeyguardFaceIconView;)V

    return-void
.end method

.method public onFaceRecognitionAuthFailed()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-wrap2(Lcom/android/keyguard/face/KeyguardFaceIconView;)V

    return-void
.end method

.method public onFaceRecognitionError(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-wrap2(Lcom/android/keyguard/face/KeyguardFaceIconView;)V

    return-void
.end method

.method public onFaceRecognitionStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    iget-object v1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v1}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-wrap0(Lcom/android/keyguard/face/KeyguardFaceIconView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-set0(Lcom/android/keyguard/face/KeyguardFaceIconView;I)I

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-get2(Lcom/android/keyguard/face/KeyguardFaceIconView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-wrap2(Lcom/android/keyguard/face/KeyguardFaceIconView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-wrap2(Lcom/android/keyguard/face/KeyguardFaceIconView;)V

    goto :goto_0
.end method

.method public onFailedUnlockAttemptChanged()V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v1}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-get0(Lcom/android/keyguard/face/KeyguardFaceIconView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    const-string/jumbo v1, "KeyguardFaceIconView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFailedUnlockAttemptChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v1}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-get0(Lcom/android/keyguard/face/KeyguardFaceIconView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/face/KeyguardFaceIconView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v1}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-get3(Lcom/android/keyguard/face/KeyguardFaceIconView;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/face/KeyguardFaceIconView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onOpenThemeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-wrap1(Lcom/android/keyguard/face/KeyguardFaceIconView;I)V

    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-wrap2(Lcom/android/keyguard/face/KeyguardFaceIconView;)V

    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-get3(Lcom/android/keyguard/face/KeyguardFaceIconView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$1;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/face/KeyguardFaceIconView;->setVisibility(I)V

    :cond_0
    return-void
.end method
