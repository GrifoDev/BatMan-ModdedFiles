.class Lcom/android/settings/datausage/UnrestrictedDataAccess$1;
.super Ljava/lang/Object;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/UnrestrictedDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AllowUnrestrictedDataUsageShowSystemApps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "AllowUnrestrictedDataUsageHideSystemApps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get5(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "AllowUnrestrictedDataUsageHideSystemApps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get3(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "AllowUnrestrictedDataUsageHideSystemApps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get3(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string/jumbo v1, "AllowUnrestrictedDataUsageByAllowedAppFirst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "AllowUnrestrictedDataUsageByName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_8
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get4(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "AllowUnrestrictedDataUsageByName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get3(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const-string/jumbo v1, "AllowUnrestrictedDataUsageByName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get3(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_d
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    const-string/jumbo v1, "AllowUnrestrictedDataUsageOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string/jumbo v1, "AllowUnrestrictedDataUsageOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_f
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-wrap1(Lcom/android/settings/datausage/UnrestrictedDataAccess;)V

    goto/16 :goto_1
.end method
