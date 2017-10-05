.class Lcom/android/launcher3/allapps/view/FolderIconViewStub$1;
.super Ljava/lang/Object;
.source "FolderIconViewStub.java"

# interfaces
.implements Lcom/android/launcher3/util/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/view/FolderIconViewStub;->prefetchIconResInBackground(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/allapps/view/Inflater;)V
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
        "Lcom/android/launcher3/common/base/item/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/view/FolderIconViewStub;

.field final synthetic val$inflater:Lcom/android/launcher3/allapps/view/Inflater;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/view/FolderIconViewStub;Lcom/android/launcher3/allapps/view/Inflater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1;->this$0:Lcom/android/launcher3/allapps/view/FolderIconViewStub;

    iput-object p2, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1;->val$inflater:Lcom/android/launcher3/allapps/view/Inflater;

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
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/launcher3/util/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1;->this$0:Lcom/android/launcher3/allapps/view/FolderIconViewStub;

    invoke-static {v1}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->access$000(Lcom/android/launcher3/allapps/view/FolderIconViewStub;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1$1;-><init>(Lcom/android/launcher3/allapps/view/FolderIconViewStub$1;Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/util/threadpool/Future;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
