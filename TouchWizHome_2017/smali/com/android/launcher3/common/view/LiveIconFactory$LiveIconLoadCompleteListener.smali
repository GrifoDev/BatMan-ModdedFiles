.class Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadCompleteListener;
.super Ljava/lang/Object;
.source "LiveIconManager.java"

# interfaces
.implements Lcom/android/launcher3/util/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/view/LiveIconFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiveIconLoadCompleteListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/util/threadpool/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/view/LiveIconFactory;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/view/LiveIconFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadCompleteListener;->this$0:Lcom/android/launcher3/common/view/LiveIconFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/launcher3/util/threadpool/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/threadpool/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadCompleteListener;->this$0:Lcom/android/launcher3/common/view/LiveIconFactory;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher3/common/view/LiveIconFactory;->access$002(Lcom/android/launcher3/common/view/LiveIconFactory;I)I

    invoke-interface {p1}, Lcom/android/launcher3/util/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/util/threadpool/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher3/common/view/LiveIconFactory;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFutureDone: done: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadCompleteListener;->this$0:Lcom/android/launcher3/common/view/LiveIconFactory;

    invoke-static {v3}, Lcom/android/launcher3/common/view/LiveIconFactory;->access$200(Lcom/android/launcher3/common/view/LiveIconFactory;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadCompleteListener;->this$0:Lcom/android/launcher3/common/view/LiveIconFactory;

    invoke-static {v3}, Lcom/android/launcher3/common/view/LiveIconFactory;->access$300(Lcom/android/launcher3/common/view/LiveIconFactory;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadCompleteListener;->this$0:Lcom/android/launcher3/common/view/LiveIconFactory;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/common/view/LiveIconFactory;->access$402(Lcom/android/launcher3/common/view/LiveIconFactory;J)J

    iget-object v1, p0, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadCompleteListener;->this$0:Lcom/android/launcher3/common/view/LiveIconFactory;

    invoke-static {v1}, Lcom/android/launcher3/common/view/LiveIconFactory;->access$200(Lcom/android/launcher3/common/view/LiveIconFactory;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadCompleteListener;->this$0:Lcom/android/launcher3/common/view/LiveIconFactory;

    invoke-static {v2}, Lcom/android/launcher3/common/view/LiveIconFactory;->access$300(Lcom/android/launcher3/common/view/LiveIconFactory;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/common/view/LiveIconManager;->onResponseLiveIcon(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
