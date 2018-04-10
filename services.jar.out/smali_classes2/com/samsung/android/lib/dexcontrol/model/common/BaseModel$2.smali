.class Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$2;
.super Ljava/util/HashMap;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->PD:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "P"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->SDP:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "S"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->CDP:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "C"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->DCP:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "D"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->AFC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "A"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->QC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "Q"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
