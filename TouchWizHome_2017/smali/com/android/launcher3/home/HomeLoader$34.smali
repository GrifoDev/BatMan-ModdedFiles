.class Lcom/android/launcher3/home/HomeLoader$34;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->updateContainerForDexSync(ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$addToFolder:Z

.field final synthetic val$folder:Lcom/android/launcher3/folder/FolderInfo;

.field final synthetic val$item:Lcom/android/launcher3/common/base/item/IconInfo;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$34;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$34;->val$oldCallbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iput-boolean p3, p0, Lcom/android/launcher3/home/HomeLoader$34;->val$addToFolder:Z

    iput-object p4, p0, Lcom/android/launcher3/home/HomeLoader$34;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iput-object p5, p0, Lcom/android/launcher3/home/HomeLoader$34;->val$item:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$34;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$34;->val$oldCallbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/home/HomeLoader$34;->val$addToFolder:Z

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$34;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$34;->val$item:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindUpdateContainer(ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_0
    return-void
.end method
