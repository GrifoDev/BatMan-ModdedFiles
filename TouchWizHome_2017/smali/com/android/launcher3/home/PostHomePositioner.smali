.class public Lcom/android/launcher3/home/PostHomePositioner;
.super Lcom/android/launcher3/common/customer/PostPositionerBase;
.source "PostHomePositioner.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final INVALID_VALUE:J = -0x1L

.field private static final SUPPORT_EXTRA_POSITION:Z = false

.field private static final SUPPORT_FOLDER_ONLY:Z = false

.field private static final TAG:Ljava/lang/String; = "PostHomePositioner"


# instance fields
.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field private mHomeLoader:Lcom/android/launcher3/home/HomeLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/customer/PostPositionProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionerBase;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/customer/PostPositionProvider;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/PostHomePositioner;Lcom/android/launcher3/common/customer/ItemRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/PostHomePositioner;->checkAndUpdatePositionInfo(Lcom/android/launcher3/common/customer/ItemRecord;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/PostHomePositioner;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/PostHomePositioner;->addItem(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/PostHomePositioner;)Lcom/android/launcher3/common/customer/PostPositionProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/PostHomePositioner;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/PostHomePositioner;->addWidget(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/PostHomePositioner;)Lcom/android/launcher3/common/customer/PostPositionProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    return-object v0
.end method

.method private addItem(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Z
    .locals 20

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v5, v6, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mModelWorker:Landroid/os/Handler;

    new-instance v6, Lcom/android/launcher3/home/PostHomePositioner$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v12, v1, v2}, Lcom/android/launcher3/home/PostHomePositioner$2;-><init>(Lcom/android/launcher3/home/PostHomePositioner;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)V

    const-wide/16 v18, 0x7d0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-wide/16 v8, -0x1

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->isHomePreloadFolder()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getPreloadedFolderId(Ljava/lang/String;)J

    move-result-wide v8

    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "folder is preloaded folder. folderId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    cmp-long v5, v8, v6

    if-gez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderId(Ljava/lang/String;Z)J

    move-result-wide v8

    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request preloaded folder. but not created by xml so find other folder type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const-wide/32 v6, 0x1869f

    cmp-long v5, v8, v6

    if-nez v5, :cond_4

    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " folder already removed by user."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderId(Ljava/lang/String;Z)J

    move-result-wide v8

    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "folder is not preloaded folder. folderId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v5, v8, v6

    if-lez v5, :cond_5

    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "folder exist. folderId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " add to folder"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/home/PostHomePositioner;->addToFolder(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;JLcom/android/launcher3/common/customer/ItemRecord;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Child item isn\'t exist : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderId(Ljava/lang/String;Z)J

    move-result-wide v8

    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "folder is not created so need to make a folder by folderId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/home/HomeLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/IconInfo;

    const-wide/16 v6, 0x0

    cmp-long v5, v8, v6

    if-lez v5, :cond_8

    if-eqz v14, :cond_8

    iget-wide v6, v14, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v18, -0x64

    cmp-long v5, v6, v18

    if-nez v5, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v14, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "PostHomePositioner"

    const-string v6, "already write as folder ready id"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v5, "PostHomePositioner"

    const-string v6, "create folder from ready id"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v16, Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v13, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v13}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v13, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v13, v5, v6, v7}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    iget-wide v6, v14, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iput-wide v6, v13, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iget v5, v14, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iput v5, v13, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    iget v5, v14, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iput v5, v13, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/PostHomePositioner;->createIconInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v4

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v11

    const/4 v5, 0x1

    iput v5, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iput-wide v6, v11, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iput v5, v11, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iput v5, v11, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    invoke-virtual {v13, v4}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {v13, v11}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v15, v7}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/HomeLoader;->removeWorkspaceItem(Ljava/util/ArrayList;)V

    iget-wide v6, v13, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iput-wide v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iput-wide v6, v11, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v5, v11}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->removeFolderId(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v6

    iget-wide v0, v13, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-wide/from16 v18, v0

    const/4 v7, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v6, v0, v1, v7}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    :cond_7
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-direct/range {p0 .. p3}, Lcom/android/launcher3/home/PostHomePositioner;->addShortcut(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v17

    if-nez v17, :cond_9

    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addShortcut return item is null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_9
    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add item and save ready id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeFolderName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v18, v0

    const/4 v7, 0x1

    move-wide/from16 v0, v18

    invoke-virtual {v5, v6, v0, v1, v7}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    goto :goto_2

    :cond_a
    invoke-direct/range {p0 .. p3}, Lcom/android/launcher3/home/PostHomePositioner;->addShortcut(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v5

    if-nez v5, :cond_7

    const-string v5, "PostHomePositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Child item isn\'t exist : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private addShortcut(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 20

    const-string v8, "PostHomePositioner"

    const-string v9, "addToHomeShortcut()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lcom/android/launcher3/home/PostHomePositioner;->performHomeNewPage(Lcom/android/launcher3/common/customer/ItemRecord;Z)J

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->isHomeNewPage()Z

    move-result v8

    if-nez v8, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/PostHomePositioner;->performHomeReplace(Lcom/android/launcher3/common/customer/ItemRecord;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_1

    const-string v8, "PostHomePositioner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not exist page : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :goto_0
    return-object v13

    :cond_1
    const/4 v8, 0x2

    new-array v5, v8, [I

    const/4 v8, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeCellX()I

    move-result v9

    aput v9, v5, v8

    const/4 v8, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeCellY()I

    move-result v9

    aput v9, v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->isHomeReplace()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v12, 0x1

    :cond_2
    :goto_1
    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v14, v16

    :goto_2
    if-ge v14, v15, :cond_5

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v8, v14}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeIndex()I

    move-result v8

    if-eq v14, v8, :cond_3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJIIZ)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeCellX()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeCellY()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNearEmptyCell([IJII)Z

    move-result v12

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJIIZ)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeCellX()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeCellY()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNearEmptyCell([IJII)Z

    move-result v12

    goto :goto_1

    :cond_5
    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    invoke-virtual {v8, v9, v15, v0, v1}, Lcom/android/launcher3/home/HomeLoader;->insertWorkspaceScreen(Landroid/content/Context;IJ)J

    move-result-wide v6

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/PostHomePositioner;->createIconInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v13

    iput-wide v6, v13, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    const/4 v8, 0x0

    aget v8, v5, v8

    iput v8, v13, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    const/4 v8, 0x1

    aget v8, v5, v8

    iput v8, v13, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    const/4 v8, 0x1

    iput v8, v13, Lcom/android/launcher3/common/base/item/IconInfo;->spanY:I

    iput v8, v13, Lcom/android/launcher3/common/base/item/IconInfo;->spanX:I

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v11, v10}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    goto/16 :goto_0
.end method

.method private addToFolder(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;JLcom/android/launcher3/common/customer/ItemRecord;)Z
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HomeLoader;->findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "PostHomePositioner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToHomeFolder() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p5}, Lcom/android/launcher3/home/PostHomePositioner;->createIconInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v2

    iput-wide p3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iput v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iput v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget-object v4, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v5, p0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v0, v3}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private addWidget(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)V
    .locals 18

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v6}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, "PostHomePositioner"

    const-string v7, "already exist widget on workspace."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v6, "PostHomePositioner"

    const-string v7, "addToHomeWidget()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/home/PostHomePositioner;->performHomeNewPage(Lcom/android/launcher3/common/customer/ItemRecord;Z)J

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->isHomeNewPage()Z

    move-result v6

    if-nez v6, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/PostHomePositioner;->performHomeReplace(Lcom/android/launcher3/common/customer/ItemRecord;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    const-string v6, "PostHomePositioner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not exist page : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    new-array v3, v6, [I

    const/4 v13, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->isHomeReplace()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v11

    const/4 v10, -0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v11, v10, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "PostHomePositioner"

    const-string v7, "Failed to initialize external widget"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v12

    const-string v6, "PostHomePositioner"

    const-string v7, "Failed to initialize external widget"

    invoke-static {v6, v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeCellX()I

    move-result v7

    aput v7, v3, v6

    const/4 v6, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeCellY()I

    move-result v7

    aput v7, v3, v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getWidgetSpanX()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getWidgetSpanY()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJIIZ)Z

    move-result v13

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v14

    new-instance v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object/from16 v0, p1

    invoke-direct {v15, v10, v0}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getWidgetSpanX()I

    move-result v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getWidgetSpanY()I

    move-result v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v14}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanX:I

    invoke-virtual {v14}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanY:I

    invoke-virtual {v14}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    iput-object v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-wide v4, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeCellX()I

    move-result v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellX:I

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeCellY()I

    move-result v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellY:I

    if-nez v13, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getWidgetSpanX()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getWidgetSpanY()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJIIZ)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v6, 0x0

    aget v6, v3, v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellX:I

    const/4 v6, 0x1

    aget v6, v3, v6

    iput v6, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellY:I

    :cond_5
    :goto_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v9, v8}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/home/PostHomePositioner;->performHomeNewPage(Lcom/android/launcher3/common/customer/ItemRecord;Z)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_5

    iput-wide v4, v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    goto :goto_2
.end method

.method private checkAndUpdatePositionInfo(Lcom/android/launcher3/common/customer/ItemRecord;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeIndex()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeCellX()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeCellY()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getWidgetSpanX()I

    move-result v9

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getWidgetSpanY()I

    move-result v10

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount()I

    move-result v0

    if-lt v3, v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :cond_0
    :goto_0
    if-gez v4, :cond_1

    const/4 v4, 0x0

    :cond_1
    if-gez v5, :cond_2

    const/4 v5, 0x0

    :cond_2
    const/4 v0, 0x2

    new-array v6, v0, [I

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    aput v0, v6, v11

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    aput v0, v6, v2

    aget v0, v6, v11

    add-int/lit8 v0, v0, -0x1

    if-le v4, v0, :cond_3

    aget v0, v6, v11

    add-int/lit8 v4, v0, -0x1

    :cond_3
    aget v0, v6, v2

    add-int/lit8 v0, v0, -0x1

    if-le v5, v0, :cond_4

    aget v0, v6, v2

    add-int/lit8 v5, v0, -0x1

    :cond_4
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v0, v1, :cond_f

    if-ge v9, v2, :cond_5

    const/4 v9, 0x1

    :cond_5
    if-ge v10, v2, :cond_6

    const/4 v10, 0x1

    :cond_6
    aget v0, v6, v11

    if-le v9, v0, :cond_7

    aget v9, v6, v11

    :cond_7
    aget v0, v6, v2

    if-le v10, v0, :cond_8

    aget v10, v6, v2

    :cond_8
    add-int v0, v4, v9

    aget v1, v6, v11

    if-le v0, v1, :cond_9

    aget v0, v6, v11

    sub-int v9, v0, v4

    :cond_9
    add-int v0, v5, v10

    aget v1, v6, v2

    if-le v0, v1, :cond_a

    aget v0, v6, v2

    sub-int v10, v0, v5

    :cond_a
    invoke-virtual {p1, v9, v10}, Lcom/android/launcher3/common/customer/ItemRecord;->setWidgetSpanXY(II)V

    :goto_1
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->SHORTCUT:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeShortcutTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeShortcutIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v8, :cond_b

    if-nez v7, :cond_c

    :cond_b
    const-string v8, "Untitled"

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_c
    invoke-virtual {p1, v8, v7}, Lcom/android/launcher3/common/customer/ItemRecord;->setShortcutInfo(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_d
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->isHomeNewPage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->isHomeReplace()Z

    move-result v2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/customer/ItemRecord;->setHomePosition(ZZIII)V

    return-void

    :cond_e
    if-gez v3, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v9, 0x1

    const/4 v10, 0x1

    goto :goto_1
.end method

.method private createIconInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/android/launcher3/common/customer/ItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->fromActivityInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/android/launcher3/common/customer/ItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->SHORTCUT:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v2, p0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/launcher3/common/customer/ItemRecord;->getShorcutIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private inArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    new-array v0, v6, [I

    iget-object v6, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v6

    aput v6, v0, v5

    iget-object v6, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v6

    aput v6, v0, v4

    aget v6, v0, v5

    aget v7, v0, v4

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iget v2, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    iget v6, p1, Landroid/graphics/Rect;->right:I

    if-gt v2, v6, :cond_1

    aget v6, v0, v5

    if-ge v2, v6, :cond_1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    :goto_1
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v6, :cond_0

    aget v6, v0, v4

    if-ge v3, v6, :cond_0

    aget-object v6, v1, v2

    aput-boolean v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v2, p2, Landroid/graphics/Rect;->left:I

    :goto_2
    iget v6, p2, Landroid/graphics/Rect;->right:I

    if-gt v2, v6, :cond_4

    aget v6, v0, v5

    if-ge v2, v6, :cond_4

    iget v3, p2, Landroid/graphics/Rect;->top:I

    :goto_3
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v6, :cond_3

    aget v6, v0, v4

    if-ge v3, v6, :cond_3

    aget-object v6, v1, v2

    aget-boolean v6, v6, v3

    if-eqz v6, :cond_2

    :goto_4
    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_4
.end method

.method private performHomeNewPage(Lcom/android/launcher3/common/customer/ItemRecord;Z)J
    .locals 5

    const-wide/16 v0, -0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->isHomeNewPage()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    const-string v2, "PostHomePositioner"

    const-string v3, "performHomeNewPage()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher3/home/PostHomePositioner;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/customer/PostPositionProvider;->disableHomeNewPage(I)V

    iget-object v2, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v3, p0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getHomeIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/launcher3/home/HomeLoader;->insertWorkspaceScreen(Landroid/content/Context;IJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private performHomeReplace(Lcom/android/launcher3/common/customer/ItemRecord;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public declared-synchronized addItem(Lcom/android/launcher3/common/customer/ItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->isHomeAdd()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v1, v2, :cond_1

    const-string v1, "PostHomePositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addHomeItem() : info is null. - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "PostHomePositioner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addHomeItem() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mModelWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/home/PostHomePositioner$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher3/home/PostHomePositioner$1;-><init>(Lcom/android/launcher3/home/PostHomePositioner;Lcom/android/launcher3/common/customer/ItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method deleteHomeArea(ILandroid/graphics/Rect;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v16

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "container"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, -0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "itemType"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "cellX"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "cellY"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "spanX"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "spanY"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v3, 0x4

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v3, 0x5

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    new-instance v11, Landroid/graphics/Rect;

    add-int v3, v9, v15

    add-int/lit8 v3, v3, -0x1

    add-int v4, v10, v18

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v11, v9, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/android/launcher3/home/PostHomePositioner;->inArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v3, v12, v13}, Lcom/android/launcher3/home/HomeLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v3, "PostHomePositioner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteHomeArea() - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " items removed."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v3, v14}, Lcom/android/launcher3/home/HomeLoader;->removeWorkspaceItem(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method protected hasItem(JZ)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/HomeLoader;->findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected init()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->getUpdater()Lcom/android/launcher3/common/model/DataUpdater;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    :cond_2
    return-void
.end method

.method protected setup()V
    .locals 3

    new-instance v0, Landroid/appwidget/AppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/home/PostHomePositioner;->mContext:Landroid/content/Context;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v0, p0, Lcom/android/launcher3/home/PostHomePositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->setContainer(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/PostHomePositioner;->init()V

    return-void
.end method
