.class Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioBalanceSeekbarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$1;->this$0:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/16 v5, 0x418

    const/16 v4, 0x404

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const-string/jumbo v3, "AudioBalanceSeekbarPreference"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$1;->this$0:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->-set0(Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;Z)Z

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$1;->this$0:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setDualColorSeekbar()V

    return-void

    :cond_3
    const-string/jumbo v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    if-eq v2, v5, :cond_4

    if-ne v2, v4, :cond_2

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$1;->this$0:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->-set0(Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;Z)Z

    goto :goto_0
.end method
