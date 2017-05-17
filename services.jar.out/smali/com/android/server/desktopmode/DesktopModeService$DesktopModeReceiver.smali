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
    .locals 11

    const/4 v10, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive(), action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v6, "android.intent.action.KNOXDESKTOP_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "com.android.server.desktopmode.extra.DESKTOP_MODE_STATE"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v7, "1st_mouse"

    invoke-static {v6, v7, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap29(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v7, "1st_dock"

    invoke-static {v6, v7, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap29(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-get13(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap24(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "EXTRA_DESKTOP_MODE_STATE_UPDATE  hdmi = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v9, "hdmi"

    invoke-static {v8, v9, v10}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap7(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v8, "hdmi"

    invoke-static {v7, v8, v10}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap7(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_3

    :goto_0
    invoke-static {v6, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap17(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get24(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v4, v5}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get24(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/StatusBarManager;->collapsePanels()V

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v5, v4}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "android.intent.action.TIME_TICK"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get13(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v2

    const-wide/32 v6, 0x19000000

    cmp-long v4, v2, v6

    if-gez v4, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Low memory warning: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v8, 0x100000

    div-long v8, v2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "MB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v6

    sget v7, Lcom/samsung/android/framework/res/R$string;->dex_toast_low_memory_warning:I

    const/4 v8, 0x2

    invoke-virtual {v6, v8, v7, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_6
    const-string/jumbo v6, "com.android.server.desktopmode.action.NOTIFICATION_PRESSED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get24(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get19(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/samsung/android/framework/res/R$string;->dex_hun_hdmi_settings:I

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v6, "com.android.server.desktopmode.action.TOUCHPAD_NOTIFICATION_PRESSED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "TOUCHPAD_NOTIFICATION_PRESSED psy119"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get24(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/StatusBarManager;->collapsePanels()V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v5, v8, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    const-string/jumbo v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "event incoming call!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap9(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v6, "com.sec.android.app.desktoplauncher.action.DEVELOPER_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v6, "developer_mode"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v5, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-set6(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_DEVELOPER_MODE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get14(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    return-void

    :cond_c
    const-string/jumbo v4, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "engineShown"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4, v5}, Lcom/android/server/desktopmode/DesktopModeService;->-set12(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap16(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
