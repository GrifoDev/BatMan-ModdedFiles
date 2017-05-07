.class Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAVCSettings.java"


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

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v4, "BluetoothAVCSettings"

    const-string/jumbo v5, "onReceive :: Intent.getAction() is return null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v4, "BluetoothAVCSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive :: getAction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x80000000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v4, "com.samsung.bluetooth.a2dp.intent.action.AVRCP_CONNECTED_WITH_AVC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->handleswitchStateChange()V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const-string/jumbo v4, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get0()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "BluetoothAVCSettings"

    const-string/jumbo v5, "sound path changed to none Bluetooth device, set to disable switch"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    goto :goto_0

    :sswitch_0
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->handleswitchStateChange()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
    .end sparse-switch
.end method
