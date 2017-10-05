.class Lcom/android/launcher3/home/HomeLoader$49;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->addHotseatItemByItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$index:I

.field final synthetic val$info:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;ILcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$49;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput p3, p0, Lcom/android/launcher3/home/HomeLoader$49;->val$index:I

    iput-object p4, p0, Lcom/android/launcher3/home/HomeLoader$49;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$13900()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v11, v10, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v11, :cond_0

    move-object v9, v10

    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v11}, Lcom/android/launcher3/home/HomeLoader;->access$12700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-wide v14, v10, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v16, -0x65

    cmp-long v11, v14, v16

    if-nez v11, :cond_3

    iget-wide v14, v10, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$index:I

    int-to-long v0, v11

    move-wide/from16 v16, v0

    cmp-long v11, v14, v16

    if-nez v11, :cond_1

    const-string v11, "HomeLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v14, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is already in index "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$index:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in homeOnly"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v10}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v9

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget-wide v14, v10, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    long-to-int v13, v14

    invoke-static {v11, v13}, Lcom/android/launcher3/home/HomeLoader;->access$13300(Lcom/android/launcher3/home/HomeLoader;I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v11}, Lcom/android/launcher3/home/HomeLoader;->access$14000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :cond_2
    if-ne v2, v6, :cond_4

    const-string v11, "HomeLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Hotseat is already max("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") to add an item"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12

    goto :goto_1

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    :cond_3
    :try_start_1
    const-string v11, "HomeLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "remove workspace item("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-boolean v11, v9, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-nez v11, :cond_5

    add-int/lit8 v2, v2, -0x1

    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$index:I

    if-le v11, v2, :cond_7

    move v3, v2

    :goto_3
    const-wide/16 v14, -0x65

    iput-wide v14, v9, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    int-to-long v14, v3

    iput-wide v14, v9, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v11, v3}, Lcom/android/launcher3/home/HomeLoader;->access$14100(Lcom/android/launcher3/home/HomeLoader;I)I

    move-result v11

    iput v11, v9, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v11, v3}, Lcom/android/launcher3/home/HomeLoader;->access$14200(Lcom/android/launcher3/home/HomeLoader;I)I

    move-result v11

    iput v11, v9, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v11}, Lcom/android/launcher3/home/HomeLoader;->access$12700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v14, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v0, v3

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_6

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$index:I

    goto :goto_3

    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    add-int/lit8 v13, v3, 0x1

    invoke-static {v11, v7, v13}, Lcom/android/launcher3/home/HomeLoader;->access$14300(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v11}, Lcom/android/launcher3/home/HomeLoader;->access$14400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v11}, Lcom/android/launcher3/home/HomeLoader;->access$12700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v12, Lcom/android/launcher3/home/HomeLoader$49$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v8, v5}, Lcom/android/launcher3/home/HomeLoader$49$1;-><init>(Lcom/android/launcher3/home/HomeLoader$49;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v11, v12}, Lcom/android/launcher3/home/HomeLoader;->access$14500(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method
