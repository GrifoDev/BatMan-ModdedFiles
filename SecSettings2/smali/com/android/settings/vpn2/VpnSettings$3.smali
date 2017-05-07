.class Lcom/android/settings/vpn2/VpnSettings$3;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get1(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AddVPN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-wrap1(Lcom/android/settings/vpn2/VpnSettings;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get1(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    iget-object v6, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v6}, Lcom/android/settings/vpn2/VpnSettings;->-wrap2(Lcom/android/settings/vpn2/VpnSettings;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/vpn2/VpnSettings;->-set0(Lcom/android/settings/vpn2/VpnSettings;Z)Z

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get4(Lcom/android/settings/vpn2/VpnSettings;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get2(Lcom/android/settings/vpn2/VpnSettings;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get2(Lcom/android/settings/vpn2/VpnSettings;)I

    move-result v5

    if-ne v5, v10, :cond_4

    const/4 v0, 0x1

    :cond_2
    :goto_2
    if-eqz v0, :cond_9

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get2(Lcom/android/settings/vpn2/VpnSettings;)I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get1(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get1(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SecureLockType"

    const-string/jumbo v7, "Set"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get1(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "VPN"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get1(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_6
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get1(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get1(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SecureLockType"

    const-string/jumbo v7, "Set"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get1(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_3
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get3(Lcom/android/settings/vpn2/VpnSettings;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_3

    :cond_8
    new-instance v1, Lcom/android/internal/net/VpnProfile;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get6(Lcom/android/settings/vpn2/VpnSettings;)Lcom/android/settings/vpn2/VpnSettings;

    move-result-object v5

    invoke-static {v5, v1, v10, v9}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get1(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn2/VpnSettings;->-get1(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
