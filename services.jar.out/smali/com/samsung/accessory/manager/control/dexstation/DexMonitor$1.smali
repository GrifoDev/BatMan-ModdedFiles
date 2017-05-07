.class Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$1;
.super Landroid/media/AudioManager$AudioRecordingCallback;
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

    iput-object p1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$1;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioRecordingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingConfigChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRecordingConfigChanged called. configs.size = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$1;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-set0(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;Z)Z

    :goto_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$1;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v1}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get2(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$1;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v2}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-wrap0(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;->setSystemRequest(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$1;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-static {v1, v4}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-set0(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;Z)Z

    goto :goto_0
.end method
