.class Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->onVerified([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$localUserId:I

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;Landroid/content/Intent;ILjava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$localEffectiveUserId:I

    iput-object p4, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$pattern:Ljava/util/List;

    iput p5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$localUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iget-object v0, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v0, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-set6(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token_iris"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iget-object v0, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v0, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get3(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-nez v6, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iget-object v0, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v0, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get6(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/CredentialCheckResultTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$localEffectiveUserId:I

    invoke-virtual {v0, v6, v1, p2, v2}, Lcom/android/settings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iget-object v0, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v7, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iget-object v0, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v0, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$pattern:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->this$3:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$2:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get3(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v2

    iget v4, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$localUserId:I

    new-instance v5, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1$1;

    iget-object v8, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$intent:Landroid/content/Intent;

    iget v9, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;->val$localEffectiveUserId:I

    invoke-direct {v5, p0, v8, v9}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1$1;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4$1$1;Landroid/content/Intent;I)V

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-set5(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
