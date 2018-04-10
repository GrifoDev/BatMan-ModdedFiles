.class Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$1;
.super Ljava/lang/Object;
.source "DexPad.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$1;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendSOAgentLogResult(Z)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSendSOAgentLogResult : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
