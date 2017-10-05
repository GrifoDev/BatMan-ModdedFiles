.class Lcom/android/settings/accounts/AccountSettings$2$1;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSettings$2;->onStateReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accounts/AccountSettings$2;

.field final synthetic val$currentProfile:Landroid/os/UserHandle;

.field final synthetic val$finalEnableAutoSync:Z

.field final synthetic val$stateId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSettings$2;ZLandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSettings$2;

    iput-boolean p2, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->val$finalEnableAutoSync:Z

    iput-object p3, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->val$currentProfile:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->val$stateId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSettings$2;

    iget-object v1, v1, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettings;->-get1(Lcom/android/settings/accounts/AccountSettings;)Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSettings$2;

    iget-object v1, v1, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettings;->-get1(Lcom/android/settings/accounts/AccountSettings;)Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f1109bd

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->val$finalEnableAutoSync:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSettings$2;

    iget-object v1, v1, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->val$stateId:Ljava/lang/String;

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSettings$2;

    iget-object v1, v1, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Account"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSettings$2;

    iget-object v1, v1, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSettings$2;

    iget-object v1, v1, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->val$currentProfile:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->show(Lcom/android/settings/accounts/AccountSettings;ZLandroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSettings$2;

    iget-object v1, v1, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->val$stateId:Ljava/lang/String;

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSettings$2;

    iget-object v1, v1, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Account"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$2$1;->this$1:Lcom/android/settings/accounts/AccountSettings$2;

    iget-object v1, v1, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "AccountSettings"

    const-string/jumbo v2, "mOptionsMenu is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
