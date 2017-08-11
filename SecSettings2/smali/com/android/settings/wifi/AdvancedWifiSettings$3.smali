.class Lcom/android/settings/wifi/AdvancedWifiSettings$3;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "AdvancedWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mEmCallback, stateId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "WiFiSetSleepPolicy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-lez v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v1

    const-string/jumbo v3, "AdvancedWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mEmCallback, param: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap6(Lcom/android/settings/wifi/AdvancedWifiSettings;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AdvancedWifiSettings"

    const-string/jumbo v4, "mEmCallback, parameter is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SleepPolicy"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WiFiAdvanced"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "WiFiManageNetworks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get9(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap9(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap1(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap0(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MobileHotspot"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WiFiSettings"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get9(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-set2(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-set0(Lcom/android/settings/wifi/AdvancedWifiSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WiFi"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WiFiSettings"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v3, "WiFiWpsPushButton"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get9(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap8(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap1(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap0(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MobileHotspot"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WiFiSettings"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get9(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-set2(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-set0(Lcom/android/settings/wifi/AdvancedWifiSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WiFi"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WiFiSettings"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v3, "WiFiSetPasspointOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get9(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap3(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap1(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap0(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MobileHotspot"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WiFiSettings"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get9(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-set2(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    const-string/jumbo v4, "WiFiSetPasspointOn"

    invoke-static {v3, v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-set0(Lcom/android/settings/wifi/AdvancedWifiSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WiFi"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WiFiSettings"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v3, "WiFiSetPasspointOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap3(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v3, "WiFiShowMAC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WifiAdvanced"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v3, "WiFiShowIPAddress"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WifiAdvanced"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v3, "SmartNetworkSwitch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get9(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap1(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap0(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string/jumbo v3, "AdvancedWifiSettings"

    const-string/jumbo v4, "mEmCallback, Wi-Fi Hotspot enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MobileHotspot"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WiFiSettings"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v3, "AdvancedWifiSettings"

    const-string/jumbo v4, "mEmCallback, Wi-Fi disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WiFi"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WiFiSettings"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get7(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string/jumbo v3, "AdvancedWifiSettings"

    const-string/jumbo v4, "mEmCallback, SNS enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get7(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v3, "AdvancedWifiSettings"

    const-string/jumbo v4, "mEmCallback, SNS disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MobileNetwork"

    const-string/jumbo v5, "Available"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "WiFiAdvanced"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
