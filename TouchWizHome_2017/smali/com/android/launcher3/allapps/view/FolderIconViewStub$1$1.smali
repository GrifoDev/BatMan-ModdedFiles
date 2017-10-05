.class Lcom/android/launcher3/allapps/view/FolderIconViewStub$1$1;
.super Ljava/lang/Object;
.source "FolderIconViewStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/view/FolderIconViewStub$1;->onFutureDone(Lcom/android/launcher3/util/threadpool/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/allapps/view/FolderIconViewStub$1;

.field final synthetic val$future:Lcom/android/launcher3/util/threadpool/Future;

.field final synthetic val$item:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/view/FolderIconViewStub$1;Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/util/threadpool/Future;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1$1;->this$1:Lcom/android/launcher3/allapps/view/FolderIconViewStub$1;

    iput-object p2, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1$1;->val$future:Lcom/android/launcher3/util/threadpool/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1$1;->this$1:Lcom/android/launcher3/allapps/view/FolderIconViewStub$1;

    iget-object v0, v0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1;->this$0:Lcom/android/launcher3/allapps/view/FolderIconViewStub;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1$1;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1$1;->this$1:Lcom/android/launcher3/allapps/view/FolderIconViewStub$1;

    iget-object v2, v2, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1;->val$inflater:Lcom/android/launcher3/allapps/view/Inflater;

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$1$1;->val$future:Lcom/android/launcher3/util/threadpool/Future;

    invoke-interface {v3}, Lcom/android/launcher3/util/threadpool/Future;->isCancelled()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->replaceView(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/allapps/view/Inflater;Z)V

    return-void
.end method
