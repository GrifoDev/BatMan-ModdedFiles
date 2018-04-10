.class Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;
.super Landroid/telephony/PhoneStateListener;
.source "FanControlModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;
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

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$202(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "IDexFanControl is ull"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$202(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$202(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$400(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setSystemRequest(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
