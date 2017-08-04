.class Lcom/android/launcher3/home/HomeLoader$15;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->addAndBindAppsButton(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

.field final synthetic val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$15;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeLoader$15;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b003f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$6700()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v5}, Lcom/android/launcher3/home/HomeLoader;->access$6500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$6500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    const-wide/16 v18, 0x1

    sub-long v6, v6, v18

    iput-wide v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$6500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v6, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v0, v5, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-wide/from16 v18, v0

    cmp-long v5, v6, v18

    if-nez v5, :cond_0

    move-object v14, v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$6800(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :cond_1
    if-eqz v14, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$6900()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget v5, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/home/HomeLoader;->access$7000(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)Landroid/util/Pair;

    move-result-object v10

    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v9, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [I

    const-wide/16 v6, -0x64

    iput-wide v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const/4 v2, 0x0

    aget v2, v9, v2

    iput v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    const/4 v2, 0x1

    aget v2, v9, v2

    iput v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$7100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$7200(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v5, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v5, Lcom/android/launcher3/home/HomeLoader$15$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/android/launcher3/home/HomeLoader$15$1;-><init>(Lcom/android/launcher3/home/HomeLoader$15;Ljava/util/ArrayList;)V

    invoke-static {v2, v5}, Lcom/android/launcher3/home/HomeLoader;->access$7300(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    long-to-int v6, v6

    invoke-static {v5, v6}, Lcom/android/launcher3/home/HomeLoader;->access$7400(Lcom/android/launcher3/home/HomeLoader;I)I

    move-result v5

    iput v5, v2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    long-to-int v6, v6

    invoke-static {v5, v6}, Lcom/android/launcher3/home/HomeLoader;->access$7500(Lcom/android/launcher3/home/HomeLoader;I)I

    move-result v5

    iput v5, v2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$7600(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeLoader$15;->val$appsButton:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeLoader;->access$6500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v5, Lcom/android/launcher3/home/HomeLoader$15$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13, v8}, Lcom/android/launcher3/home/HomeLoader$15$2;-><init>(Lcom/android/launcher3/home/HomeLoader$15;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V

    invoke-static {v2, v5}, Lcom/android/launcher3/home/HomeLoader;->access$7700(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
