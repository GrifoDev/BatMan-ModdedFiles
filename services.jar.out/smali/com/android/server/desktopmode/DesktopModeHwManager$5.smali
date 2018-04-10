.class Lcom/android/server/desktopmode/DesktopModeHwManager$5;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeHwManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeHwManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/SettingsHelper;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get17(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    const-string/jumbo v7, "com.samsung.bluetooth.device.extra.DISCONNECTION_REASON"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorClass()I

    move-result v5

    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "minorClass="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v7, 0x13

    if-ne v6, v7, :cond_3

    const/16 v7, 0x580

    if-ne v5, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7, v10}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-set0(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)Z

    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mIsBtMouseDeepSleep=true"

    invoke-static {v7, v8}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get9(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-wrap2(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string/jumbo v7, "com.samsung.pen.INSERT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get16(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopMode()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_6

    :cond_5
    return-void

    :cond_6
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    const-string/jumbo v8, "penInsert"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-set1(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)Z

    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mIsSPenDetached="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v9}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get10(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get13(Lcom/android/server/desktopmode/DesktopModeHwManager;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get10(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onSPenStateChanged(Z)V

    goto :goto_1

    :cond_8
    const-string/jumbo v7, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive() in DesktopModeHwManager, action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isDexPadConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/desktopmode/DockManager;->updateAdaptiveFastChargingSettingsEnabled()V

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v7, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v7, :cond_b

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive() in DesktopModeHwManager, action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isDexPadConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/desktopmode/DockManager;->updateAdaptiveFastChargingSettingsEnabled()V

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V

    goto/16 :goto_0
.end method
