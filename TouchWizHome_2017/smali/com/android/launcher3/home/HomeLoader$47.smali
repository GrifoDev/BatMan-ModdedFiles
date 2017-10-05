.class Lcom/android/launcher3/home/HomeLoader$47;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->removeHotseatItemByItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$info:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$47;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$13200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$47;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v4, v4

    invoke-static {v2, v4}, Lcom/android/launcher3/home/HomeLoader;->access$13300(Lcom/android/launcher3/home/HomeLoader;I)V

    const-string v2, "HomeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeHotseatItemByItemInfo info : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$47;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$13400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-wide/16 v4, -0x1

    iput-wide v4, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-wide/16 v4, -0x1

    iput-wide v4, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$47;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$47;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$13500()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v0, v5, v6}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$47;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$12700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$47;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v3, Lcom/android/launcher3/home/HomeLoader$47$1;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/home/HomeLoader$47$1;-><init>(Lcom/android/launcher3/home/HomeLoader$47;Ljava/util/ArrayList;)V

    invoke-static {v2, v3}, Lcom/android/launcher3/home/HomeLoader;->access$13600(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
