.class Lcom/android/launcher3/folder/view/FolderPagedView$3;
.super Ljava/lang/Object;
.source "FolderPagedView.java"

# interfaces
.implements Lcom/android/launcher3/common/view/OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

.field final synthetic val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderPagedView;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderPagedView$3;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderPagedView$3;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/View;Landroid/view/View;Z)V
    .locals 7

    instance-of v3, p2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v3, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView$3;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView$3;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-static {v3, v0, v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->access$100(Lcom/android/launcher3/folder/view/FolderPagedView;Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_2

    iget v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView$3;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-static {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->access$200(Lcom/android/launcher3/folder/view/FolderPagedView;)Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/view/FolderView;->notifyIconViewInflated(I)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView$3;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-static {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->access$300(Lcom/android/launcher3/folder/view/FolderPagedView;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView$3;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-static {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->access$300(Lcom/android/launcher3/folder/view/FolderPagedView;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView$3;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView$3;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-static {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->access$300(Lcom/android/launcher3/folder/view/FolderPagedView;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView$3;->val$iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView$3;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-static {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->access$300(Lcom/android/launcher3/folder/view/FolderPagedView;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "FolderPagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "All icon views are updated. info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderPagedView$3;->this$0:Lcom/android/launcher3/folder/view/FolderPagedView;

    invoke-static {v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->access$200(Lcom/android/launcher3/folder/view/FolderPagedView;)Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v4

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
