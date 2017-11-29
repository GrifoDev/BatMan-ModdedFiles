.class public interface abstract Lcom/samsung/android/sdk/ssf/common/util/HashUtils$HashingListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/common/util/HashUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HashingListener"
.end annotation


# virtual methods
.method public abstract onCancelled()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onHashingComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
