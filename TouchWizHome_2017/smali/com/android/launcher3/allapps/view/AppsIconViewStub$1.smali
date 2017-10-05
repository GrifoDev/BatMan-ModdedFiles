.class Lcom/android/launcher3/allapps/view/AppsIconViewStub$1;
.super Ljava/lang/Object;
.source "AppsIconViewStub.java"

# interfaces
.implements Lcom/android/launcher3/util/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/view/AppsIconViewStub;->inflateInBackground(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/util/threadpool/FutureListener",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/view/AppsIconViewStub;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/view/AppsIconViewStub;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub$1;->this$0:Lcom/android/launcher3/allapps/view/AppsIconViewStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/launcher3/util/threadpool/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/threadpool/Future",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/launcher3/util/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub$1;->this$0:Lcom/android/launcher3/allapps/view/AppsIconViewStub;

    invoke-static {v1}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->access$000(Lcom/android/launcher3/allapps/view/AppsIconViewStub;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/allapps/view/AppsIconViewStub$1$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher3/allapps/view/AppsIconViewStub$1$1;-><init>(Lcom/android/launcher3/allapps/view/AppsIconViewStub$1;Landroid/view/View;Lcom/android/launcher3/util/threadpool/Future;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
