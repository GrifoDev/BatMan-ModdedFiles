.class Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive(), action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v5, "android.intent.action.KNOXDESKTOP_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "com.android.server.desktopmode.extra.DESKTOP_MODE_STATE"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v6, "1st_mouse"

    invoke-static {v5, v6, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap30(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v6, "1st_dock"

    invoke-static {v5, v6, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap30(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get15(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap25(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EXTRA_DESKTOP_MODE_STATE_UPDATE  hdmi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v8, "hdmi"

    invoke-static {v7, v8, v9}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap6(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v7, "hdmi"

    invoke-static {v6, v7, v9}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap6(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_3

    :goto_0
    invoke-static {v5, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap17(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get25(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v1, v4}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get25(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v4, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "android.intent.action.TIME_TICK"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get15(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v2

    const-wide/32 v6, 0x19000000

    cmp-long v1, v2, v6

    if-gez v1, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Low memory warning: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/32 v6, 0x100000

    div-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get12(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get12(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v5

    sget v6, Lcom/samsung/android/framework/res/R$string;->dex_toast_low_memory_warning:I

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v6, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "com.android.server.desktopmode.action.NOTIFICATION_PRESSED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get25(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap40(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap21(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v5, "com.android.server.desktopmode.action.TOUCHPAD_NOTIFICATION_PRESSED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get25(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/StatusBarManager;->collapsePanels()V

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get12(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get12(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v4, v7, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "event incoming call!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap8(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v5, "com.sec.android.app.desktoplauncher.action.DEVELOPER_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v5, "developer_mode"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v4, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-set6(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACTION_DEVELOPER_MODE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get16(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-void

    :cond_c
    const-string/jumbo v1, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-set12(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap16(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
