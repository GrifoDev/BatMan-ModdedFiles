.class Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;
.super Landroid/os/Handler;
.source "DexPad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/utils/Util;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v2, v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$200(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v2, v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$300(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;[B)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->requestConnectedPowerChargerInfoUpdate()V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$400(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->setFastChargingEnable(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$500(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$600(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;I)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$700(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)V

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->requestUniqueNumber()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
