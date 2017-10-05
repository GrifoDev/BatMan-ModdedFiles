.class public Lcom/android/launcher3/common/model/FavoritesUpdater;
.super Lcom/android/launcher3/common/model/DataUpdater;
.source "FavoritesUpdater.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DataUpdater$UpdaterInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "FavoritesUpdater"


# instance fields
.field private mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

.field private mLoader:Lcom/android/launcher3/common/model/DataLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/DataLoader;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/model/DataUpdater;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->init(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;)V

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    iput-object p4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    return-void
.end method

.method static synthetic access$000(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->checkItemInfoLocked(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->logFolderCount(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;J[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemArrays(Lcom/android/launcher3/common/base/item/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/FavoritesProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    return-object v0
.end method

.method public static checkItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 5

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    iget-wide v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    new-instance v2, Lcom/android/launcher3/common/model/FavoritesUpdater$8;

    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater$8;-><init>(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V

    invoke-static {v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static checkItemInfoLocked(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 12

    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, p0, p1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_1

    if-eq p2, v5, :cond_1

    instance-of v7, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_2

    instance-of v7, p2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_2

    move-object v4, v5

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    iget-object v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-wide v8, v4, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    iget-wide v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-ne v7, v8, :cond_4

    iget-wide v8, v4, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iget-wide v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    iget-wide v8, v4, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iget-wide v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    if-ne v7, v8, :cond_4

    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    if-ne v7, v8, :cond_4

    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->spanX:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->spanX:I

    if-ne v7, v8, :cond_4

    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->spanY:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->spanY:I

    if-ne v7, v8, :cond_4

    iget-object v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    if-nez v7, :cond_0

    iget-object v7, v3, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    if-eqz v7, :cond_1

    :cond_0
    iget-object v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    if-eqz v7, :cond_4

    iget-object v7, v3, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    if-eqz v7, :cond_4

    iget-object v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-ne v7, v8, :cond_4

    iget-object v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    if-ne v7, v8, :cond_4

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v7, v5, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v7, :cond_4

    instance-of v7, p2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v7, :cond_4

    move-object v4, v5

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v8, v4, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iget-wide v10, v3, Lcom/android/launcher3/folder/FolderInfo;->id:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    iget v7, v4, Lcom/android/launcher3/folder/FolderInfo;->itemType:I

    iget v8, v3, Lcom/android/launcher3/folder/FolderInfo;->itemType:I

    if-ne v7, v8, :cond_4

    iget-wide v8, v4, Lcom/android/launcher3/folder/FolderInfo;->container:J

    iget-wide v10, v3, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    iget-wide v8, v4, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iget-wide v10, v3, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    iget v7, v4, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    iget v8, v3, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    if-ne v7, v8, :cond_4

    iget v7, v4, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    iget v8, v3, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    if-ne v7, v8, :cond_4

    iget v7, v4, Lcom/android/launcher3/folder/FolderInfo;->spanX:I

    iget v8, v3, Lcom/android/launcher3/folder/FolderInfo;->spanX:I

    if-ne v7, v8, :cond_4

    iget v7, v4, Lcom/android/launcher3/folder/FolderInfo;->spanY:I

    iget v8, v3, Lcom/android/launcher3/folder/FolderInfo;->spanY:I

    if-ne v7, v8, :cond_4

    iget-object v7, v4, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    if-nez v7, :cond_3

    iget-object v7, v3, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    if-eqz v7, :cond_1

    :cond_3
    iget-object v7, v4, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    if-eqz v7, :cond_4

    iget-object v7, v3, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    if-eqz v7, :cond_4

    iget-object v7, v4, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, v3, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-ne v7, v8, :cond_4

    iget-object v7, v4, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, v3, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    if-eq v7, v8, :cond_1

    :cond_4
    if-eqz v5, :cond_7

    if-eq p2, v5, :cond_7

    instance-of v7, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_7

    instance-of v7, p2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_7

    move-object v4, v5

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v0, v4, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v7, v0, v8

    if-eqz v7, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-lez v7, :cond_7

    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v8, v7, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v10, -0x66

    cmp-long v7, v8, v10

    if-nez v7, :cond_7

    :cond_5
    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    if-ne v7, v8, :cond_6

    iget v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    if-eq v7, v8, :cond_7

    :cond_6
    const-string v7, "FavoritesUpdater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Position changed apps item, but not problem : item="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " modelItem="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "modelItem: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_8

    invoke-virtual {v2, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_8
    throw v2
.end method

.method private logFolderCount(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 12

    const-wide/16 v10, -0x66

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v7, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v1, v4, v10

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APFO"

    int-to-long v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HSFO"

    int-to-long v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APFO"

    int-to-long v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HSFO"

    int-to-long v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1
.end method

.method private updateItemArrays(Lcom/android/launcher3/common/base/item/ItemInfo;J[Ljava/lang/StackTraceElement;)V
    .locals 8

    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {p2, p3, p1, p4}, Lcom/android/launcher3/common/model/FavoritesUpdater;->checkItemInfoLocked(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " container being set to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", not in the list of folders"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FavoritesUpdater"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2, p2, p3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v0, :cond_3

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    :cond_1
    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit v3

    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/DataLoader;->containPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/DataLoader;->updatePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/DataLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/DataLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J
    .locals 6

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/android/launcher3/common/model/FavoritesUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    const-string v2, "_id"

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/common/model/FavoritesUpdater$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater$1;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V

    invoke-static {v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    return-wide v2
.end method

.method public addItems(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    :cond_0
    new-instance v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;

    invoke-direct {v3}, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;-><init>()V

    const/4 v6, 0x3

    iput v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->action:I

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    iput-object v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->component:Landroid/content/ComponentName;

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    iput-wide v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iput-wide v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iput-wide v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    iget v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iput v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iput-object v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v6, 0x0

    iput v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->itemtype:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->modified:J

    iget v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    iput v6, v3, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->status:I

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    new-instance v5, Lcom/android/launcher3/common/model/FavoritesUpdater$9;

    invoke-direct {v5, p0, v4, p1, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater$9;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Ljava/util/List;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;)V

    invoke-static {v5}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addItems(Ljava/util/ArrayList;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v7, v6

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v10, v7, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    const-wide/16 v12, -0x1

    cmp-long v1, v10, v12

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    :cond_0
    new-instance v8, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;

    invoke-direct {v8}, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;-><init>()V

    const/4 v1, 0x3

    iput v1, v8, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->action:I

    iget-object v1, v7, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    iput-object v1, v8, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->component:Landroid/content/ComponentName;

    iget-wide v10, v7, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    iput-wide v10, v8, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    iget-wide v10, v7, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iput-wide v10, v8, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    iget-wide v10, v7, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iput-wide v10, v8, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    iget v1, v7, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    iput v1, v8, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    iget-object v1, v7, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iput-object v1, v8, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    iget-object v1, v7, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object v1, v8, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v1, 0x0

    iput v1, v8, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->itemtype:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->modified:J

    iget v1, v7, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    iput v1, v8, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->status:I

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$10;

    move-object v1, p0

    move/from16 v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/model/FavoritesUpdater$10;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Ljava/util/List;ZLjava/util/ArrayList;[Ljava/lang/StackTraceElement;)V

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteFolderContentsFromDatabase(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater$7;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/folder/FolderInfo;)V

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater$3;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteItemsFromDatabase(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$5;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater$5;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deletePackageFromDatabase(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/launcher3/common/model/DataLoader;->getItemsByPackageName(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater$2;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/model/FavoritesUpdater$4;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v6, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gez v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/android/launcher3/common/model/FavoritesUpdater$6;

    invoke-direct {v4, p0, v6, v5, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater$6;-><init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    invoke-static {v4}, Lcom/android/launcher3/common/model/FavoritesUpdater;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method
