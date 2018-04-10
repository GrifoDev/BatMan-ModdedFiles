.class Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;
.super Landroid/content/BroadcastReceiver;
.source "FanControlModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->initFanControlReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$600(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Landroid/media/AudioManager;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.intent.action.CHECK_SIOP_LEVEL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.intent.action.CHECK_SIOP_LEVEL_TEMP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.accessory.action.DEX_FAN_ON_TEMP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.accessory.action.DEX_FAN_OFF_TEMP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.accessory.action.DEX_FAN_HOLDING"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onReceive - mAudioManager is null"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$700(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    const-string/jumbo v4, "siop_level_broadcast"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$802(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;I)I

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BroadcastReceiver - SIOP LEVEL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v5}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$800(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3, v6}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$102(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$900(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$800(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setSiopLevel(I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onReceive - mIDexFanControl is null"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onReceive - mIDexFanControl is null"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string/jumbo v3, "siop_level_broadcast"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SIOP LEVEL FROM TEST APP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v4, "eng"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setSiopLevel(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3, v6}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$902(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STRONG:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setFanLevelForTest(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setFanLevelForTest(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3, v6}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$1002(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$400(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setSystemRequest(Z)V

    goto/16 :goto_1

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3, v5}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$1002(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$400(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setSystemRequest(Z)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v3, "dex_fan_holding_duration"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "dex_fan_holding_sender"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    :cond_c
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->onFanHoldingEvent(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "Anonymous"

    goto :goto_3

    :cond_e
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$700(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V

    goto/16 :goto_1
.end method
