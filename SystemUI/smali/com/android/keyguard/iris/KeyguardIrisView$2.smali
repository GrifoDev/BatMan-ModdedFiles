.class Lcom/android/keyguard/iris/KeyguardIrisView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIrisView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/iris/KeyguardIrisView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/iris/KeyguardIrisView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/iris/KeyguardIrisView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap3(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get2(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap4(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFailedUnlockAttemptChanged()V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    const-string/jumbo v1, "KeyguardIrisView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFailedUnlockAttemptChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get2(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

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
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap3(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    goto :goto_0
.end method

.method public onIrisError(ILjava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap0(Lcom/android/keyguard/iris/KeyguardIrisView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowIrisErrorMsg(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get2(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap4(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap5(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get0(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get0(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get2(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap4(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIrisHelp(ILjava/lang/String;)V
    .locals 4

    const/16 v3, -0x9

    const/4 v0, -0x7

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap3(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get4(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get0(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get0(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq p1, v3, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/iris/KeyguardIrisView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap0(Lcom/android/keyguard/iris/KeyguardIrisView;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p1, v3, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get2(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap4(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0, p2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap5(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, -0x8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap3(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0, p2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap4(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIrisPossible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap3(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get4(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get4(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get4(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get4(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0, p1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-set0(Lcom/android/keyguard/iris/KeyguardIrisView;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v0, "KeyguardIrisView"

    const-string/jumbo v1, "preview to VISIBLE - onKeyguardBouncerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get4(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap3(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "KeyguardIrisView"

    const-string/jumbo v1, "preview to INVISIBLE - onKeyguardBouncerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get4(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap3(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    goto :goto_0
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0, p1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-set1(Lcom/android/keyguard/iris/KeyguardIrisView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    goto :goto_0
.end method

.method public onPhoneStateChanged(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get2(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

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
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap3(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap0(Lcom/android/keyguard/iris/KeyguardIrisView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get2(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap4(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

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
    .locals 1

    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap3(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    :cond_0
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap3(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    :cond_0
    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get2(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap4(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
