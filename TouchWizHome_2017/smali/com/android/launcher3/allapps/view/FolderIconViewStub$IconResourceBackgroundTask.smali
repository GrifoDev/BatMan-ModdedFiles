.class Lcom/android/launcher3/allapps/view/FolderIconViewStub$IconResourceBackgroundTask;
.super Ljava/lang/Object;
.source "FolderIconViewStub.java"

# interfaces
.implements Lcom/android/launcher3/util/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/view/FolderIconViewStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconResourceBackgroundTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/util/threadpool/ThreadPool$Job",
        "<",
        "Lcom/android/launcher3/common/base/item/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

.field final synthetic this$0:Lcom/android/launcher3/allapps/view/FolderIconViewStub;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/view/FolderIconViewStub;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$IconResourceBackgroundTask;->this$0:Lcom/android/launcher3/allapps/view/FolderIconViewStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$IconResourceBackgroundTask;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$IconResourceBackgroundTask;->this$0:Lcom/android/launcher3/allapps/view/FolderIconViewStub;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$IconResourceBackgroundTask;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v0, p1, v1}, Lcom/android/launcher3/allapps/view/FolderIconViewStub;->access$100(Lcom/android/launcher3/allapps/view/FolderIconViewStub;Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/FolderIconViewStub$IconResourceBackgroundTask;->mItemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    return-object v0
.end method

.method public bridge synthetic run(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/FolderIconViewStub$IconResourceBackgroundTask;->run(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    return-object v0
.end method
