.class Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$3;
.super Ljava/lang/Object;
.source "DexMonitor.java"

# interfaces
.implements Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlListener;


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

    iput-object p1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$3;->this$0:Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFanLevelChanged(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;)V
    .locals 3

    invoke-static {}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
