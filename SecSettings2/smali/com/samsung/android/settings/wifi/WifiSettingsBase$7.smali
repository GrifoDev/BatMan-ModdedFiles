.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;
.super Ljava/lang/Object;
.source "WifiSettingsBase.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 12

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "WifiSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEmCallback, stateId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "WiFiTurnOn"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "MobileHotspot"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "WiFiTurnOff"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyOFF"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyOFF"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "WiFiScan"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap4(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "MobileHotspot"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-set3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-set1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "WiFiSelectScanedAp"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "WifiSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEmCallback, param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "MobileHotspot"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v0, "WiFiRemoveConnectAp"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    const/4 v7, -0x1

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    :cond_10
    if-eq v7, v5, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "Disconnected"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_1
    return-void

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "Disconnected"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyDisconnected"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v0, "WiFiSelectConnectedAp"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    const/4 v7, -0x1

    if-eqz v10, :cond_16

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    :cond_16
    if-eq v7, v5, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->showDialogToDisplayInfo(Lcom/android/settingslib/wifi/AccessPoint;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyConnected"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSelectConnectedAp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "MobileHotspot"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_2

    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyConnected"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_2

    :cond_1b
    const-string/jumbo v0, "WiFiAdvanced"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiAdvancedScreen()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "WiFiAdvanced"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v0, "WiFiDirectSettings"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-set0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    :cond_1f
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7$1;

    const-wide/16 v2, 0x1770

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;JJ)V

    invoke-static {v11, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-set0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_0
.end method
