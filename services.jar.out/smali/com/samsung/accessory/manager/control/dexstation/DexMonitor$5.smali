.class Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;
.super Landroid/content/BroadcastReceiver;
.source "DexMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->initFanControlReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-static {}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDexMonitorIntentReceiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v2}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get1(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Landroid/media/AudioManager;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onReceive - mAudioManager is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->registerAudioRecodingListener()V

    :cond_0
    const-string/jumbo v2, "com.samsung.intent.action.CHECK_SIOP_LEVEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "siop_level_broadcast"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SIOP LEVEL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v2}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get2(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;->setSiopLevel(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v2, "com.samsung.intent.action.CHECK_SIOP_LEVEL_TEMP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "siop_level_broadcast"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SIOP LEVEL FROM TEST APP : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v2}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get2(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;->setSiopLevel(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "com.samsung.accessory.action.DEX_FAN_ON_TEMP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v2}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get2(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;

    move-result-object v2

    sget-object v3, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->STRONG:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v2, v3}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;->setFanStatusForTest(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "com.samsung.accessory.action.DEX_FAN_OFF_TEMP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v2}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get2(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;

    move-result-object v2

    sget-object v3, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v2, v3}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;->setFanStatusForTest(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-set2(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;Z)Z

    iget-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v2}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get2(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v3}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-wrap0(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;->setSystemRequest(Z)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v2, v6}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-set2(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;Z)Z

    iget-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v2}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get2(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v3}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-wrap0(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;->setSystemRequest(Z)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "com.samsung.accessory.action.DEX_FAN_HOLDING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "dex_fan_holding_duration"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v2}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get2(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;->onFanHoldingEvent(I)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->registerAudioRecodingListener()V

    goto/16 :goto_0
.end method
