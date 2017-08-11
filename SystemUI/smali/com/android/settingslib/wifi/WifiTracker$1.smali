.class Lcom/android/settingslib/wifi/WifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "WifiTracker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ">>> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v12, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const-string/jumbo v13, "wifi_state"

    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap4(Lcom/android/settingslib/wifi/WifiTracker;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v12, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "multipleChanges"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v12, "wifiConfiguration"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v12, "changeReason"

    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get7(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    move-result-object v13

    if-eqz v5, :cond_3

    const/4 v12, 0x1

    :goto_1
    const/16 v14, 0xa

    invoke-virtual {v13, v14, v12, v7, v3}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get14(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v13

    const/4 v12, 0x1

    if-ne v7, v12, :cond_4

    const/4 v12, 0x1

    :goto_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v12}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    :cond_5
    const-string/jumbo v12, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get10(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get10(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v12

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;->onScanStateChange(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get14(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v12, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const-string/jumbo v12, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/LinkProperties;

    invoke-static {v13, v12}, Lcom/android/settingslib/wifi/WifiTracker;->-set2(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get14(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v12, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string/jumbo v12, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get2(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get2(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const-string/jumbo v12, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/LinkProperties;

    invoke-static {v13, v12}, Lcom/android/settingslib/wifi/WifiTracker;->-set2(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/settingslib/wifi/WifiTracker;->-set4(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/settingslib/wifi/WifiTracker;->-set0(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get14(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v4}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get8(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    if-eq v12, v13, :cond_1

    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v12

    if-eqz v12, :cond_a

    const-string/jumbo v12, "WifiTracker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "previousNetworkState:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v14}, Lcom/android/settingslib/wifi/WifiTracker;->-get8(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " != currentNetworkState:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v14}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get7(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get14(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v12, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const-string/jumbo v12, "newState"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/SupplicantState;

    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v12

    if-eqz v12, :cond_c

    const-string/jumbo v12, "WifiTracker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "supplicantState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", getDetailedStateOf: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v10}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", currentNetworkState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v14}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get3(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get13(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/settingslib/wifi/WifiTracker;->-set1(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get2(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-nez v12, :cond_1

    sget-object v12, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v10, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/settingslib/wifi/WifiTracker;->-set4(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v10}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/settingslib/wifi/WifiTracker;->-set0(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get8(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    if-eq v12, v13, :cond_1

    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v12

    if-eqz v12, :cond_e

    const-string/jumbo v12, "WifiTracker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "previousNetworkState:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v14}, Lcom/android/settingslib/wifi/WifiTracker;->-get8(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " != currentNetworkState:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v14}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get14(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v11}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v12, "com.samsung.android.net.wifi.WECHAT_AP_LIST"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v12

    if-eqz v12, :cond_10

    const-string/jumbo v12, "WifiTracker"

    const-string/jumbo v13, "received WECHAT_AP_LIST action"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get12(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v12

    if-nez v12, :cond_11

    return-void

    :cond_11
    const-string/jumbo v12, "ssid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const-string/jumbo v12, "bssid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v12, "storename"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get12(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v12

    invoke-virtual {v12, v8, v2, v9}, Lcom/android/settingslib/wifi/WeChatWifiManager;->setWeChatAccessPoint(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap2(Lcom/android/settingslib/wifi/WifiTracker;ZZ)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v12, "com.samsung.android.net.wifi.WECHAT_LOGOUT"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v12

    if-eqz v12, :cond_13

    const-string/jumbo v12, "WifiTracker"

    const-string/jumbo v13, "received WECHAT_LOGOUT action"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get12(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v12

    if-nez v12, :cond_14

    return-void

    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get12(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap0(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v12, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get14(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v12, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v12, "info_type"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/16 v12, 0x12e

    if-eq v6, v12, :cond_17

    const/16 v12, 0xb

    if-ne v6, v12, :cond_1

    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v12}, Lcom/android/settingslib/wifi/WifiTracker;->-get14(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
