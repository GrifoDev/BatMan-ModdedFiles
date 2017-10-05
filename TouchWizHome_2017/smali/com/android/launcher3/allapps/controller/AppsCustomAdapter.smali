.class public Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;
.super Lcom/android/launcher3/allapps/controller/AppsAdapter;
.source "AppsCustomAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsCustomAdapter"


# instance fields
.field private final mNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/controller/Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mTidyupNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/controller/Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mState:I

    new-instance v0, Lcom/android/launcher3/allapps/controller/CustomNormalizer;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/CustomNormalizer;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;

    return-void
.end method

.method private isTidyUpState()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createFolderAndAddItem(Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    const-string v3, "createFolderAndAddItem"

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->debugItemInfo(Ljava/lang/String;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const-wide/16 v4, -0x66

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x66

    cmp-long v3, v10, v4

    if-nez v3, :cond_0

    const/4 v8, 0x1

    :goto_0
    if-eqz v8, :cond_1

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    :goto_1
    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    if-eqz v8, :cond_2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    :goto_2
    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    if-eqz v8, :cond_3

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    :goto_3
    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    if-eqz v8, :cond_4

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    :goto_4
    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "container"

    const/16 v4, -0x66

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "screen"

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "rank"

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cellX"

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cellY"

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/model/AppsModel;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iput-wide v4, v2, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "container"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "screen"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "rank"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_0
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_1
    const-wide/16 v4, -0x1

    goto/16 :goto_1

    :cond_2
    const/4 v3, -0x1

    goto/16 :goto_2

    :cond_3
    const/4 v3, -0x1

    goto/16 :goto_3

    :cond_4
    const/4 v3, -0x1

    goto/16 :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v4, v14, v7}, Lcom/android/launcher3/allapps/model/AppsModel;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->add(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v12, p2

    invoke-direct/range {v3 .. v12}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLandroid/content/ContentValues;JLcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v15, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/controller/Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->isTidyUpState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mTidyupNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/allapps/controller/TidyUpNormalizer;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/TidyUpNormalizer;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mTidyupNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mTidyupNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "AppsCustomAdapter"

    return-object v0
.end method

.method public getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    .locals 1

    sget-object v0, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    return-object v0
.end method

.method protected removeViewAndReorder(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v1, v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->removeEmptyCellsAndViews(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setStateAndUpdateLock(IZ)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mState:I

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mUpdateLocked:Z

    return-void
.end method

.method protected updateAppsContents(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    const-string v4, "AppsCustomAdapter"

    const-string v5, "no change items"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const-string v4, "removeApps : "

    invoke-static {v4, v3}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v4, v3}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->removeApps(Ljava/util/ArrayList;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v4}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getMaxItemsPerScreen()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v4}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getCellCountX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v2, v1}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    sget-object v4, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-boolean v4, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mUpdateLocked:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->updateDirtyItems()V

    :goto_1
    const-string v4, "addItemView"

    invoke-static {v4, v0}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->addItemView(Ljava/util/ArrayList;Z)V

    goto :goto_0

    :cond_1
    const-string v4, "AppsCustomAdapter"

    const-string v5, "ignore update db because of updateLocked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected updateFolderContents(Lcom/android/launcher3/util/LongArrayMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v6

    const-wide/16 v8, -0x66

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    iget-wide v10, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/allapps/model/AppsModel;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    iget v9, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v9, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v8, v5}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->updateApps(Ljava/util/ArrayList;)V

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v8, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->removeApps(Ljava/util/ArrayList;)V

    const-string v8, "updateFolderContents target : "

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v9, v6, v7}, Lcom/android/launcher3/allapps/model/AppsModel;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->debugItemInfo(Ljava/lang/String;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const-string v8, "update folder item : "

    invoke-static {v8, v5}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v8, "remove folder item : "

    invoke-static {v8, v1}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;->debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
