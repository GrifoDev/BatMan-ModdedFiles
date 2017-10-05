.class Lcom/android/launcher3/allapps/view/AppsIconViewStub$InflateBackgroundTask;
.super Ljava/lang/Object;
.source "AppsIconViewStub.java"

# interfaces
.implements Lcom/android/launcher3/util/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/view/AppsIconViewStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InflateBackgroundTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/util/threadpool/ThreadPool$Job",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

.field final synthetic this$0:Lcom/android/launcher3/allapps/view/AppsIconViewStub;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/view/AppsIconViewStub;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub$InflateBackgroundTask;->this$0:Lcom/android/launcher3/allapps/view/AppsIconViewStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub$InflateBackgroundTask;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;)Landroid/view/View;
    .locals 2

    invoke-interface {p1}, Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub$InflateBackgroundTask;->this$0:Lcom/android/launcher3/allapps/view/AppsIconViewStub;

    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->access$000(Lcom/android/launcher3/allapps/view/AppsIconViewStub;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub$InflateBackgroundTask;->this$0:Lcom/android/launcher3/allapps/view/AppsIconViewStub;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub$InflateBackgroundTask;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->access$100(Lcom/android/launcher3/allapps/view/AppsIconViewStub;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsIconViewStub$InflateBackgroundTask;->this$0:Lcom/android/launcher3/allapps/view/AppsIconViewStub;

    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsIconViewStub;->access$200(Lcom/android/launcher3/allapps/view/AppsIconViewStub;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsIconViewStub$InflateBackgroundTask;->run(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
