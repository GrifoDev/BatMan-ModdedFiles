.class Lcom/android/keyguard/KeyguardAccountView$4;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAccountView;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAccountView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardAccountView$4;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->val$success:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->-get2(Lcom/android/keyguard/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "com.android.systemui"

    const-string/jumbo v4, "LSAN"

    invoke-static {v1, v3, v4, v5, v5}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView$4;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Unlock account screen succeeded."

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->-get4(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometrics(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->-get5(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->-get2(Lcom/android/keyguard/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v7, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->-get1(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-interface {v1, v3, v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->-get1(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->-get0(Lcom/android/keyguard/KeyguardAccountView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->-get11(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    sget v3, Lcom/android/keyguard/R$string;->kg_login_invalid_input:I

    invoke-interface {v1, v3, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->-get7(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v1

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardAccountView;->-set0(Lcom/android/keyguard/KeyguardAccountView;Z)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView$4;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Unlock account screen failed."

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->-get11(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    sget v3, Lcom/android/keyguard/R$string;->no_network_connection:I

    invoke-interface {v1, v3, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_0
.end method
