.class Lcom/android/server/display/WifiDisplayController$8;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$NativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(ILjava/lang/String;)V
    .locals 15

    sparse-switch p1, :sswitch_data_0

    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onNotify Error,  msg : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v11, "WifiDisplayController"

    const-string/jumbo v12, "    onNotify received : NOTIFY_WFD_ENGINE_RESUME"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get7(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v13, "com.sec.android.smartview.WFD_ENGINE_RESUME"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v11, "WifiDisplayController"

    const-string/jumbo v12, "    onNotify received : NOTIFY_WFD_ENGINE_PAUSE"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get7(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v13, "com.sec.android.smartview.WFD_ENGINE_PAUSE"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :sswitch_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    rem-int/lit8 v12, v5, 0x2

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set19(Lcom/android/server/display/WifiDisplayController;I)I

    const-string/jumbo v12, "WifiDisplayController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    onNotify received : NOTIFY_TRANSPORT_MODE,  mTransportMode = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get29(Lcom/android/server/display/WifiDisplayController;)I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_2

    const-string/jumbo v11, "TCP"

    :goto_1
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get29(Lcom/android/server/display/WifiDisplayController;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get7(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "audio"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v12, 0x3

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set17(Lcom/android/server/display/WifiDisplayController;I)I

    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "send command: current stream vol : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get26(Lcom/android/server/display/WifiDisplayController;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v12, "vol"

    iget-object v13, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get26(Lcom/android/server/display/WifiDisplayController;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const/4 v11, 0x1

    if-gt v5, v11, :cond_0

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-wrap19(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v11, "UDP"

    goto :goto_1

    :sswitch_3
    const-string/jumbo v11, "WifiDisplayController"

    const-string/jumbo v12, "    onNotify received : NOTIFY_WEAK_NETWORK"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get7(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v12

    const v13, 0x103012b

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v12, 0x1040b2b

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_4
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v12, "isSupportDisplayVolumeControl"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set12(Lcom/android/server/display/WifiDisplayController;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    onNotify received :  NOTIFY_DISPLAY_VOLUME_SUPPORT, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get18(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v11, "WifiDisplayController"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :sswitch_5
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v12, "minVol"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set9(Lcom/android/server/display/WifiDisplayController;I)I

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v12, "maxVol"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set8(Lcom/android/server/display/WifiDisplayController;I)I

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v12, "curVol"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set7(Lcom/android/server/display/WifiDisplayController;I)I

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v12, "isMute"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set10(Lcom/android/server/display/WifiDisplayController;Z)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "minVol"

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "maxVol"

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get13(Lcom/android/server/display/WifiDisplayController;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "curVol"

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get12(Lcom/android/server/display/WifiDisplayController;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "isMute"

    iget-object v12, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v12}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/16 v12, 0x9

    invoke-static {v11, v12, v10}, Lcom/android/server/display/WifiDisplayController;->-wrap20(Lcom/android/server/display/WifiDisplayController;ILandroid/os/Bundle;)V

    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    onNotify received :  NOTIFY_DISPLAY_VOLUME_STATUS, mDisplayMinVolume = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", mDisplayMaxVolume = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get13(Lcom/android/server/display/WifiDisplayController;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", mDisplayCurrentVolume = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get12(Lcom/android/server/display/WifiDisplayController;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", mIsDisplayVolumeMuted = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v11, "WifiDisplayController"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :sswitch_6
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v12, "renameAvailable"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set15(Lcom/android/server/display/WifiDisplayController;Z)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    const-string/jumbo v11, "WifiDisplayController"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_7
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    onNotify received : NOTIFY_ROTATION_CHANGED = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v11, "com.samsung.intent.action.ROTATION_CHANGED"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "rotation"

    invoke-virtual {v3, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get7(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v3, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v11, 0x1

    if-eq v8, v11, :cond_3

    const/4 v11, 0x3

    if-ne v8, v11, :cond_4

    :cond_3
    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get31(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/server/display/WFDUibcManager;->setPortraitMode(Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get31(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/display/WFDUibcManager;->setPortraitMode(Z)V

    goto/16 :goto_0

    :sswitch_8
    :try_start_3
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "UibcAvailable"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    onNotify received : NOTIFY_SUPPORT_UIBC = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v11, v9}, Lcom/android/server/display/WifiDisplayController;->startUIBCVirtualSoftkey(Z)V

    if-eqz v9, :cond_5

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get31(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/display/WFDUibcManager;->start()Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v2

    const-string/jumbo v11, "WifiDisplayController"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    :try_start_4
    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-get31(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/display/WFDUibcManager;->stop()Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :sswitch_9
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "NOTIFY_GET_PROCESS_NAME_BY_PID pid : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11, v7}, Lcom/android/server/display/WifiDisplayController;->-wrap9(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_0

    :sswitch_a
    :try_start_5
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v12, "isSupportInitiatedMirroring"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/display/WifiDisplayController;->-set13(Lcom/android/server/display/WifiDisplayController;Z)Z

    const-string/jumbo v11, "WifiDisplayController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    onNotify received : NOTIFY_SUPPORT_INITIATE_FROM_TV = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v13}, Lcom/android/server/display/WifiDisplayController;->-get19(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v2

    const-string/jumbo v11, "WifiDisplayController"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v11, "WifiDisplayController"

    const-string/jumbo v12, "    onNotify received : NOTIFY_SCREEN_WAKE_UP"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->-wrap30(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x7 -> :sswitch_2
        0x9 -> :sswitch_8
        0xa -> :sswitch_7
        0x1e -> :sswitch_3
        0x28 -> :sswitch_a
        0x32 -> :sswitch_b
        0x3c -> :sswitch_4
        0x46 -> :sswitch_5
        0x50 -> :sswitch_9
    .end sparse-switch
.end method
