.class Lcom/android/settings/accounts/AccountSettings$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    const v8, 0x7f1109b7

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get2(Lcom/android/settings/accounts/AccountSettings;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v7, :cond_0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    const-string/jumbo v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mEmCallback: enableAutoSync = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v4, "AutoSyncOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get1(Lcom/android/settings/accounts/AccountSettings;)Landroid/view/Menu;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get1(Lcom/android/settings/accounts/AccountSettings;)Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v4, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Account"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4, v7, v0}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->show(Lcom/android/settings/accounts/AccountSettings;ZLandroid/os/UserHandle;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v4, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Account"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "AutoSyncOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get1(Lcom/android/settings/accounts/AccountSettings;)Landroid/view/Menu;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get1(Lcom/android/settings/accounts/AccountSettings;)Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->show(Lcom/android/settings/accounts/AccountSettings;ZLandroid/os/UserHandle;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v4, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Account"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v4, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Account"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
