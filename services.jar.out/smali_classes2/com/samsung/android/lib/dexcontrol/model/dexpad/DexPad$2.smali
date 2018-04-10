.class Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;
.super Ljava/lang/Object;
.source "DexPad.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;
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
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$100(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$100(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->getData()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$100(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p2, v4}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->setData([B)V

    goto :goto_0
.end method

.method public bridge synthetic onFail(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->onFail(ILcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$100(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$100(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->getData()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$100(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p1, v3}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->setData([B)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->onSuccess(Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V

    return-void
.end method
