.class Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;
.super Ljava/lang/Object;
.source "BluetoothAVCSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-set0(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    const-string/jumbo v4, "BluetoothAVCSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string/jumbo v4, "BluetoothAVCSettings"

    const-string/jumbo v5, "onStateReceived :: bixbyA2dpProfile is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap0(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Z

    move-result v1

    const-string/jumbo v4, "MediaVolumeSyncOn"

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const-string/jumbo v5, "MediaVolumesync"

    const-string/jumbo v6, "Available"

    const-string/jumbo v7, "no"

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const-string/jumbo v5, "MediaVolumesync"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const-string/jumbo v5, "DualAudio"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v4, v9}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->onSwitchStateChange(Z)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v4, v9}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->onSwitchStateChange(Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "MediaVolumeSyncOff"

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const-string/jumbo v5, "MediaVolumesync"

    const-string/jumbo v6, "Available"

    const-string/jumbo v7, "no"

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    goto :goto_0

    :cond_6
    if-nez v2, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const-string/jumbo v5, "MediaVolumesync"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "yes"

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->onSwitchStateChange(Z)V

    goto/16 :goto_0
.end method
