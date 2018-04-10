.class public interface abstract Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;
.super Ljava/lang/Object;
.source "IUvdmSender.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract send([B)V
.end method

.method public abstract send([BI)V
.end method

.method public abstract setInMsgMinLength(I)V
.end method

.method public abstract setResponseListener(Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;",
            ">;)V"
        }
    .end annotation
.end method
