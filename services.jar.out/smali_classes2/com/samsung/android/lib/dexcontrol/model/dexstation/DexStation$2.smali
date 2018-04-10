.class Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$2;
.super Ljava/lang/Object;
.source "DexStation.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener",
        "<",
        "Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFail(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$2;->onFail(ILcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSuccess"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$2;->onSuccess(Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V

    return-void
.end method
