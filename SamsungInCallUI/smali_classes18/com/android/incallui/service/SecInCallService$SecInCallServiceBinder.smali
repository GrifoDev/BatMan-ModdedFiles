.class final Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;
.super Lcom/android/server/telecom/ISecInCallInterface$Stub;
.source "SecInCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/SecInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecInCallServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecInCallService;


# direct methods
.method private constructor <init>(Lcom/android/incallui/service/SecInCallService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/service/SecInCallService;

    invoke-direct {p0}, Lcom/android/server/telecom/ISecInCallInterface$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/service/SecInCallService;Lcom/android/incallui/service/SecInCallService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;-><init>(Lcom/android/incallui/service/SecInCallService;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v8, "SecInCallService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invoke: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v8, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v8, :pswitch_data_0

    const-string v8, "SecInCallService"

    const-string v9, "invoke: unknown command"

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v4

    :sswitch_0
    const-string v9, "setSecInCallAdapter"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :sswitch_1
    const-string v9, "answerRingingCallInUI"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :sswitch_2
    const-string v9, "onPostDialPause"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :sswitch_3
    const-string v9, "onPostDialPauseComplete"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x3

    goto :goto_0

    :sswitch_4
    const-string v9, "sendMessageToUI"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :sswitch_5
    const-string v9, "needToShowAsFullScreen"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x5

    goto :goto_0

    :sswitch_6
    const-string v9, "handleCallSessionMessage"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x6

    goto :goto_0

    :sswitch_7
    const-string v9, "stopAnswerMemo"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x7

    goto :goto_0

    :pswitch_0
    const-string v8, "secInCallAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/telecom/ISecInCallInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/telecom/ISecInCallInterface;

    move-result-object v5

    iget-object v8, p0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/service/SecInCallService;

    # getter for: Lcom/android/incallui/service/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/incallui/service/SecInCallService;->access$000(Lcom/android/incallui/service/SecInCallService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "SecInCallService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invoke: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    :try_start_1
    iget-object v8, p0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/service/SecInCallService;

    # getter for: Lcom/android/incallui/service/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/incallui/service/SecInCallService;->access$000(Lcom/android/incallui/service/SecInCallService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :pswitch_2
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "callId"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "remainingChars"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    iget-object v8, p0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/service/SecInCallService;

    # getter for: Lcom/android/incallui/service/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/incallui/service/SecInCallService;->access$000(Lcom/android/incallui/service/SecInCallService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :pswitch_3
    const/4 v8, 0x2

    new-array v3, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "callId"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const-string v9, "remainingChars"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    iget-object v8, p0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/service/SecInCallService;

    # getter for: Lcom/android/incallui/service/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/incallui/service/SecInCallService;->access$000(Lcom/android/incallui/service/SecInCallService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :pswitch_4
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "telecomCallId"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "info"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    iget-object v8, p0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/service/SecInCallService;

    # getter for: Lcom/android/incallui/service/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/incallui/service/SecInCallService;->access$000(Lcom/android/incallui/service/SecInCallService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x6

    invoke-virtual {v8, v9, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :pswitch_5
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowAsFullScreen()Z

    move-result v7

    const-string v8, "retValue"

    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :pswitch_6
    const/4 v8, 0x2

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "telecomCallId"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "message"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    iget-object v8, p0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/service/SecInCallService;

    # getter for: Lcom/android/incallui/service/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/incallui/service/SecInCallService;->access$000(Lcom/android/incallui/service/SecInCallService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :pswitch_7
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopGuidance()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7825a2e5 -> :sswitch_5
        -0x71642529 -> :sswitch_6
        -0x4edf71a0 -> :sswitch_3
        -0x4bebfc46 -> :sswitch_7
        -0x3b6ae7a3 -> :sswitch_0
        0x248882b -> :sswitch_1
        0x2721d24e -> :sswitch_4
        0x3c11f007 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
