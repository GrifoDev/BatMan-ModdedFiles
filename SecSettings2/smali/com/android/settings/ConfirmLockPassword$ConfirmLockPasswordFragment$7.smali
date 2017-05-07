.class Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$localUserId:I

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localEffectiveUserId:I

    iput p5, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-set2(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-boolean v2, v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mReturnCredentials:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$intent:Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token"

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$intent:Landroid/content/Intent;

    const-string/jumbo v3, "password"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get2(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    if-nez v10, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get3(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/CredentialCheckResultTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localEffectiveUserId:I

    move/from16 v0, p2

    invoke-virtual {v2, v10, v3, v0, v4}, Lcom/android/settings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localEffectiveUserId:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localUserId:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v9, v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get2(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localUserId:I

    new-instance v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localEffectiveUserId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localUserId:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;Landroid/content/Intent;ILjava/lang/String;I)V

    move-object v4, v9

    move-object v5, v12

    move-wide v6, v14

    move-object v9, v2

    invoke-static/range {v4 .. v9}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-set4(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
