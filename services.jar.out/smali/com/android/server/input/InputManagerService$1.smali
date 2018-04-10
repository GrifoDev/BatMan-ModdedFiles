.class Lcom/android/server/input/InputManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v21, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/input/InputManagerService;->-get9(Lcom/android/server/input/InputManagerService;)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/input/InputManagerService;->-get2(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v15, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/input/InputManagerService;->-get3(Lcom/android/server/input/InputManagerService;)Ljava/util/Locale;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/input/InputManagerService;->-get4(Lcom/android/server/input/InputManagerService;)Landroid/view/InputDevice;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/input/InputManagerService;->-wrap7(Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->-wrap24(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v15}, Lcom/android/server/input/InputManagerService;->-set0(Lcom/android/server/input/InputManagerService;Ljava/util/Locale;)Ljava/util/Locale;

    goto :goto_0

    :cond_2
    const-string/jumbo v21, "com.samsung.android.theme.themecenter.THEME_APPLY"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string/jumbo v21, "com.sec.intent.action.SARDEVICE_CP"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    const-string/jumbo v21, "cmd"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v17, ""

    const-string/jumbo v21, "option"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    const-string/jumbo v21, "option"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :cond_3
    const-string/jumbo v21, "device"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v21, "InputManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "received SARDEVICE_CP, callAction = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " deviceID = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " cableConnection = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/input/InputManagerService;->-get1(Lcom/android/server/input/InputManagerService;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " option = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v21, v9, 0x1

    if-nez v21, :cond_4

    and-int/lit8 v21, v9, 0x20

    if-eqz v21, :cond_0

    :cond_4
    const/4 v10, 0x0

    const-string/jumbo v21, "on"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/input/InputManagerService;->-set3(Lcom/android/server/input/InputManagerService;Z)Z

    const/4 v10, 0x1

    const-string/jumbo v21, "band:lo"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    const/16 v10, 0x21

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Lcom/android/server/input/InputManagerService;->enableDeviceForBackOff(II)I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v21, "band:hi"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    const/16 v10, 0x11

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/input/InputManagerService;->-set3(Lcom/android/server/input/InputManagerService;Z)Z

    goto :goto_1

    :cond_8
    const-string/jumbo v21, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const-string/jumbo v21, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    const-string/jumbo v21, "InputManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "received NETWORK_STATE_CHANGED_ACTION, currentState = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, ""

    const-string/jumbo v22, "TOUCHKEY"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_0

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/input/InputManagerService;->-set4(Lcom/android/server/input/InputManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/input/InputManagerService;->enableDeviceForBackOff(Z)I

    goto/16 :goto_0

    :cond_9
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/input/InputManagerService;->enableDeviceForBackOff(Z)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/input/InputManagerService;->-set4(Lcom/android/server/input/InputManagerService;Z)Z

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v21, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    const-string/jumbo v21, "state"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const-string/jumbo v21, "InputManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "received HEADSET_PLUG state = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/input/InputManagerService;->setTouchKeyEarjack(Z)I

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/input/InputManagerService;->setTouchKeyEarjack(Z)I

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v21, "com.samsung.android.intent.action.SET_INWATER_TOUCH"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    const-string/jumbo v21, "set"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    const-string/jumbo v21, "force"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    const-string/jumbo v21, "package"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v21, "type"

    const/16 v22, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v22, "InputManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "received:"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v23, " packageName:"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-eqz v18, :cond_f

    move-object/from16 v21, v18

    :goto_2
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "com.samsung.android.intent.action.SET_INWATER_TOUCH"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    if-eqz v18, :cond_d

    const-string/jumbo v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    :cond_d
    const-string/jumbo v18, "retail"

    :cond_e
    if-eqz v18, :cond_0

    const-string/jumbo v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v4, v12, v1}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v21, "null"

    goto :goto_2

    :cond_10
    const-string/jumbo v21, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/input/InputManagerService;->-get2(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v8, v14, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/input/InputManagerService;->-get5(Lcom/android/server/input/InputManagerService;)I

    move-result v21

    move/from16 v0, v21

    if-eq v0, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v8}, Lcom/android/server/input/InputManagerService;->-set1(Lcom/android/server/input/InputManagerService;I)I

    invoke-static {}, Landroid/view/PointerIcon;->clearSystemIcons()V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v21, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-static {}, Lcom/android/server/input/InputManagerService;->-get0()Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mBackgroundKeyCountService:Lcom/android/server/input/BackgroundKeyCountService;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mBackgroundKeyCountService:Lcom/android/server/input/BackgroundKeyCountService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/input/BackgroundKeyCountService;->kickOldies()V

    goto/16 :goto_0
.end method
