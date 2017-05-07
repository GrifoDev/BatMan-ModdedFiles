.class Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$2;
.super Landroid/telephony/PhoneStateListener;
.source "DexMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;
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

    iput-object p1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$2;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get0()Ljava/lang/String;

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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$2;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v0, v3}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-set1(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$2;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v0}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get2(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$2;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v1}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-wrap0(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;->setSystemRequest(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$2;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v0, v3}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-set1(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$2;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-set1(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
