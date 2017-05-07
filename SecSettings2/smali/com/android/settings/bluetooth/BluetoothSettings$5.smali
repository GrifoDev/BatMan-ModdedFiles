.class Lcom/android/settings/bluetooth/BluetoothSettings$5;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 11

    const v5, 0x7f0b0401

    const v3, 0x7f0b03f5

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set2(Lcom/android/settings/bluetooth/BluetoothSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v9

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v8

    const-string/jumbo v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "BluetoothSettings"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "BluetoothOn"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v9, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "BluetoothOff"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v9, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "AlreadyOFF"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "BluetoothStartScanning"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v9, :cond_7

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    :cond_7
    if-nez v8, :cond_8

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()Z

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "BluetoothStopScanning"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v9, :cond_a

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "On"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_a
    if-eqz v8, :cond_b

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "BluetoothScanning"

    const-string/jumbo v2, "On"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "BluetoothDiscoverableModeOn"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez v9, :cond_d

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    const-string/jumbo v0, "BluetoothDeviceConnect"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: DeviceName is EMPTY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_10
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: parameter size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->extendTimeout(I)V

    if-nez v9, :cond_12

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set6(Lcom/android/settings/bluetooth/BluetoothSettings;Z)Z

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDeviceByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    if-eqz v7, :cond_16

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set4(Lcom/android/settings/bluetooth/BluetoothSettings;Z)Z

    if-eqz v8, :cond_13

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    :cond_13
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "AlreadyConnected"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_15

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportProfilesReady()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v7}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "ExistedApp"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    :cond_15
    invoke-virtual {v7, v10}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto/16 :goto_0

    :cond_16
    if-nez v8, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()Z

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v0, "BluetoothDeviceDisconnect"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    if-nez v9, :cond_18

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "On"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_19
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: DeviceName is EMPTY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_1a
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: parameter size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDeviceByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    if-eqz v7, :cond_1f

    if-eqz v8, :cond_1c

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    :cond_1c
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v7}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v7}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "ExistedApp"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    :cond_1d
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto/16 :goto_0

    :cond_1e
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "AlreadyConnected"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_1f
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v0, "BluetoothControlHistory"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "BluetoothControlHistory"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_21
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_22
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    :cond_23
    const-string/jumbo v0, "BluetoothPairedDeviceSetting"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v0

    if-lez v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_25
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: parameter size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_26
    if-nez v9, :cond_28

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "On"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    return-void

    :cond_27
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->findDeviceByCachedManager()V

    goto/16 :goto_0

    :cond_29
    const-string/jumbo v0, "DualAudioSettings"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    if-nez v9, :cond_2a

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    :cond_2a
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move v3, v5

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "DualAudioSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2b
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_2c
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move v3, v5

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_3

    :cond_2d
    const-string/jumbo v0, "MediaVolumeSyncSettings"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    if-nez v9, :cond_2e

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    :cond_2e
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0405

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "MediaVolumeSyncSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2f
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_30
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0405

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_4

    :cond_31
    const-string/jumbo v0, "BluetoothHelp"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUseDeltaOptionMenu()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isSupportHelpMenu()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->moveToHelpMenu()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "HelpMenu"

    const-string/jumbo v2, "Existed"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    :cond_32
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_33
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "HelpMenu"

    const-string/jumbo v2, "Existed"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap4(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_34
    const-string/jumbo v0, "BluetoothReceivedFiles"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isUseDeltaOptionMenu()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->moveToReceivedFilesMenu()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "ReceivedFiles"

    const-string/jumbo v2, "Existed"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_35
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    :cond_36
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "ReceivedFiles"

    const-string/jumbo v2, "Existed"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap5(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0
.end method
