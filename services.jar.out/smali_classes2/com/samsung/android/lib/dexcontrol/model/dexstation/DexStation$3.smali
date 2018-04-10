.class Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$3;
.super Landroid/content/BroadcastReceiver;
.source "DexStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "samsung.net.ethernet.ETH_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "eth_state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Connected"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->access$100(Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "1ETH"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
