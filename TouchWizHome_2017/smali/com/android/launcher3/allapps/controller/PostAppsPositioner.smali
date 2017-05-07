.class public Lcom/android/launcher3/allapps/controller/PostAppsPositioner;
.super Lcom/android/launcher3/common/customer/PostPositionerBase;
.source "PostAppsPositioner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PostAppsPositioner"


# instance fields
.field private mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

.field private mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/customer/PostPositionProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionerBase;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/customer/PostPositionProvider;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/controller/PostAppsPositioner;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->addItem(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/controller/PostAppsPositioner;)Lcom/android/launcher3/common/customer/PostPositionProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    return-object v0
.end method

.method private declared-synchronized addItem(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)Z
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-wide/16 v4, -0x1

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->isAppsPreloadFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getPreloadedFolderId(Ljava/lang/String;)J

    move-result-wide v4

    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder is preloaded folder. folderId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v1, v4, v10

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderId(Ljava/lang/String;Z)J

    move-result-wide v4

    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request preloaded folder. but not created by xml so find other folder type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-wide/32 v2, 0x1869f

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " folder already removed by user."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v8

    :goto_1
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderId(Ljava/lang/String;Z)J

    move-result-wide v4

    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder is not preloaded folder. folderId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    cmp-long v1, v4, v10

    if-lez v1, :cond_3

    :try_start_2
    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder exist. folderId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " add to folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->addToFolder(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;JLcom/android/launcher3/common/customer/ItemRecord;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToFolder Child item isn\'t exist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderId(Ljava/lang/String;Z)J

    move-result-wide v4

    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder is not created so need to make a folder by folderId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/allapps/model/AppsLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v7

    cmp-long v1, v4, v10

    if-lez v1, :cond_4

    if-eqz v7, :cond_4

    const-string v1, "PostAppsPositioner"

    const-string v2, "create folder from ready id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7, p3, p1}, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->createFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/customer/ItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFolder Child item isn\'t exist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->getItemInfoInAppsForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "PostAppsPositioner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add item and save ready id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p3}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v2

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v10, v11, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    :cond_5
    :goto_2
    move v1, v9

    goto/16 :goto_1

    :cond_6
    const-string v1, "PostAppsPositioner"

    const-string v2, "folder is not created and folderName from PrefInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private addToFolder(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;JLcom/android/launcher3/common/customer/ItemRecord;)Z
    .locals 9

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/model/AppsLoader;->findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v2

    const-string v4, "PostAppsPositioner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToFolder() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    const-string v4, "PostAppsPositioner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToAppsFolder() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5, p2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->getItemInfoInAppsForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "PostAppsPositioner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToAppsFolder() - folderItem ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , appItem container = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v4, v2, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->addToFolderItem(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V

    :goto_0
    return v3

    :cond_0
    const-string v4, "PostAppsPositioner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToAppsFolder() - item:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is already added to folder:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v3, "PostAppsPositioner"

    const-string v4, "no app item for addToFolder"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private createFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/customer/ItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Z
    .locals 10

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p2}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    const-wide/16 v6, -0x66

    iput-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v5, v7}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iget v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v6, v1, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    iget v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v6, v1, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v6, v1, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {p3}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p3}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/launcher3/allapps/model/AppsLoader;->getItemInfoInAppsForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    return v4

    :catch_0
    move-exception v0

    const-string v6, "PostAppsPositioner"

    const-string v7, "generate new item id for created folder is failed."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v6, v1, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->addFolderAndBindItem(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p2}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->removeFolderId(Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {p2}, Lcom/android/launcher3/common/customer/ItemRecord;->getAppsFolderName()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    const-string v4, "PostAppsPositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createFolder() - fItem.id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_1
.end method


# virtual methods
.method public addItem(Lcom/android/launcher3/common/customer/ItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->isAppsAdd()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "PostAppsPositioner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAppsItem() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getUpdater()Lcom/android/launcher3/common/model/DataUpdater;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mModelWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/allapps/controller/PostAppsPositioner$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/launcher3/allapps/controller/PostAppsPositioner$1;-><init>(Lcom/android/launcher3/allapps/controller/PostAppsPositioner;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/customer/ItemRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteFolder(J)V
    .locals 7

    const-wide/32 v4, 0x1869f

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderNameId(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v1, v0, v4, v5, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getPreloadedFolderNameId(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    invoke-virtual {v1, v0, v4, v5, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method protected setup()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;->mPrefInfo:Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    const/16 v1, -0x66

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->setContainer(I)V

    return-void
.end method
