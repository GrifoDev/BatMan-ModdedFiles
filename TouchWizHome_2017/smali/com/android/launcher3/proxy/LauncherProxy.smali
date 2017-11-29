.class public Lcom/android/launcher3/proxy/LauncherProxy;
.super Ljava/lang/Object;
.source "LauncherProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    }
.end annotation


# static fields
.field public static final INVALID_VALUE:I = -0x3e7

.field public static final LAUNCHER_PROXY_NOT_READY:I = -0x1

.field public static final LAUNCHER_PROXY_NOT_SUPPORTED_STATE:I = -0x2

.field public static final LAUNCHER_PROXY_PARAMS_ERROR:I = -0x3

.field public static final LAUNCHER_PROXY_RESULT_OK:I = 0x0

.field public static final PAGE_MOVE_CURRENT:I = -0x3

.field public static final PAGE_MOVE_DEFAULT:I = -0x6

.field public static final PAGE_MOVE_EMPTY:I = 0x0

.field public static final PAGE_MOVE_FIRST:I = -0x4

.field public static final PAGE_MOVE_LAST:I = -0x5

.field public static final PAGE_MOVE_NEXT:I = -0x2

.field public static final PAGE_MOVE_PREV:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

.field private mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

.field private mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

.field private mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

.field private mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

.field private mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

.field private mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher3/proxy/LauncherProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/proxy/LauncherProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-static {p1, v7, v8}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/ItemListHelper;->getUnhiddenItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [I

    aput p2, v7, v8

    invoke-static {v6, v7}, Lcom/android/launcher3/util/ItemListHelper;->getContainerIdMatchedItemList(Ljava/util/List;[I)Ljava/util/List;

    move-result-object v5

    invoke-static {v6}, Lcom/android/launcher3/util/ItemListHelper;->getFolderItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/util/ItemListHelper;->getAllItemMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v3, :cond_0

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    int-to-long v10, p2

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method private getItemsInfoByTitle(Ljava/lang/String;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/common/model/DataLoader;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/util/ItemListHelper;->getUnhiddenItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lcom/android/launcher3/util/ItemListHelper;->getTitleMatchedItemList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput p2, v10, v11

    invoke-static {v8, v10}, Lcom/android/launcher3/util/ItemListHelper;->getContainerIdMatchedItemList(Ljava/util/List;[I)Ljava/util/List;

    move-result-object v7

    invoke-static {v8}, Lcom/android/launcher3/util/ItemListHelper;->getFolderItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher3/util/ItemListHelper;->getAllItemMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v12, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_0

    iget-wide v12, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move/from16 v0, p2

    int-to-long v14, v0

    cmp-long v11, v12, v14

    if-nez v11, :cond_0

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v7
.end method

.method private hideOrUnHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;Z)I
    .locals 4

    const/4 v3, 0x6

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, -0x3

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->hideApps(Ljava/util/ArrayList;)V

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->unHideApps(Ljava/util/ArrayList;)V

    goto :goto_1
.end method


# virtual methods
.method public final addAppsFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 7

    const/4 v3, -0x3

    const/4 v6, 0x6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v4

    if-ne v4, v6, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v4, :cond_4

    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v4

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    const/4 v5, 0x0

    invoke-interface {v4, v6, v5}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v5, v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->addFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final addHomeFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 6

    const/4 v5, 0x6

    if-nez p1, :cond_0

    const/4 v3, -0x3

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    if-ne v3, v5, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, -0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    const/4 v4, 0x0

    invoke-interface {v3, v5, v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeOnlyMode()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_5

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->addFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->removeShortcut(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_7

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v4, v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->addFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final addHomeItemToPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;III)I
    .locals 2

    const/4 v0, -0x3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lez p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->createHomeAppShortcut(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;I)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final addNewHomePageInOverViewMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->addNewHomePageInOverViewMode()V

    const/4 v0, 0x0

    return v0
.end method

.method public final addNewPageInHome()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->addNewPage()V

    const/4 v0, 0x0

    return v0
.end method

.method public final addSearchResultItemToFolder()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->addResultApps()V

    const/4 v0, 0x0

    return v0
.end method

.method public final addSearchResultItemToFolder(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->addResultApps(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public final addSearchResultItemToFolder(Z)I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->addResultApps(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public final addToSecureFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->addToSecureFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->startSecureFolder()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final addWidgetResultItemToHome()I
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->getWidgetResultItem()Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x3

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->addHomeWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->goHome()I

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public final alignHomeIcon(IZ)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->alignHomeIcon(IZ)V

    const/4 v0, 0x0

    return v0
.end method

.method public final appsTidyUpPages()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->tidyUpPages()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canAppAddToSecureFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v2, v1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->canAppAddToSecureFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public final changeAppsFolderTitle(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->changeFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->changeTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeAppsScreengrid(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->changeScreengrid(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final changeAppsViewTypeToAlphabetic()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeAppsViewTypeToCustom()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeHomeFolderTitle(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->changeFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->changeTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeHomePageOrder(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->changeHomePageOrder(II)V

    const/4 v0, 0x0

    return v0
.end method

.method public final changeHomeScreengrid(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->changeScreengrid(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final changeHomeStyle(Z)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->changeHomeStyle(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public final checkAbleAlignIcon(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->checkAbleAlignIcon(IZ)Z

    move-result v0

    return v0
.end method

.method public final checkMatchAppsGridOption(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->checkMatchGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final checkMatchHomeGridOption(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->checkMatchGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final checkNeedDisplayAutoalignDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->checkNeedDisplayAutoalignDialog()Z

    move-result v0

    return v0
.end method

.method public final checkValidAppsGridOption(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->checkValidGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final checkValidHomeGridOption(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->checkValidGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final clearBadge(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->clearBadge(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final clearFolderBadge(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 4

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    instance-of v3, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->clearBadge(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final closeFolder()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->closeFolder()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final contactUs()I
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->startContactUsActivity(Landroid/content/Context;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final createHomeAppShortcut(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;I)I
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v1, -0x3

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->setName(Ljava/lang/String;)V

    if-ltz p2, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v3, v1, v4, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->createShortcut(Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/ItemInfo;I)V

    :cond_1
    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v3, v1, v4, v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->createShortcut(Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/ItemInfo;I)V

    goto :goto_1
.end method

.method public final createHomeFolderShortcut(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 v2, -0x3

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0, v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->createShortcut(Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/ItemInfo;I)V

    goto :goto_0
.end method

.method public final disableAllAppsBadge()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->disableAllAppsBadge()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final enableAllAppsBadge(Z)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enableAllAppsBadge(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final enableAppsButton(Z)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->showAppsButton()V

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->exitSettingsView()V

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->exitSubState()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->hideAppsButton()V

    goto :goto_1
.end method

.method public final enableSingleAppBadge(Ljava/lang/String;Z)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enableSingleAppBadge(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final enterAppsFolderAddApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4

    const/4 v2, -0x3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-interface {v2, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterFolderAddAppsView(Lcom/android/launcher3/folder/view/FolderIconView;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final enterBadgeManagementView()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enterBadgeManagementView()V

    const/4 v0, 0x0

    return v0
.end method

.method public final enterHideAppsView()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterHideAppsView()V

    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeAboutPageView()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enterHomeAboutPageView()V

    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeEditView()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->enterHomeEditView()V

    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeFolderAddApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4

    const/4 v2, -0x3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-interface {v2, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterFolderAddAppsView(Lcom/android/launcher3/folder/view/FolderIconView;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final enterHomeSettingAppsGridSettingView()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->exitSettingsView()V

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->showAppsGridSettingView()V

    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeSettingHomeGridSettingView()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->exitSettingsView()V

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->enterHomeSettingGridSettingView()V

    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeSettingModeChangeView()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enterHomeSettingChangeModeView()V

    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeSettingView()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enterHomeSettingView()V

    const/4 v0, 0x0

    return v0
.end method

.method public final enterWidgetListView()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterWidgetListView()V

    const/4 v0, 0x0

    return v0
.end method

.method public final enterWidgetResizeMode(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 8

    const/4 v5, 0x0

    const/4 v4, -0x2

    instance-of v6, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v6, :cond_1

    const/4 v4, -0x3

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v0, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByPackageName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v6, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v6, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->enterWidgetResizeMode(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_0
.end method

.method public final enterWidgetSearchState()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->enterSearchState()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final enterWidgetUninstallState()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->enterUninstallState()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeOnlyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v2, -0x66

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByTitle(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getAppsPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getPageCount()I

    move-result v0

    return v0
.end method

.method public final getCurrentTopStage()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    return v0
.end method

.method public getFolderItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :cond_0
    return-object v4

    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v5}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget-object v2, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\s"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method public final getHomeCurrentPage()I
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    return v1
.end method

.method public getHomeFolderItemCountByTitle(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemCountByTitle(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v5, -0x64

    if-nez p1, :cond_0

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, -0x65

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByTitle(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method public final getHomePageCount()I
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final getHomePageCountInOverviewMode()I
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public final getHomePageNumberByScreenId(J)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPageIndexForScreenId(J)I

    move-result v0

    return v0
.end method

.method public getHomeWidgetItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByTitle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemInfoInHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getOrdinalNumber()I

    move-result v1

    const/16 v2, -0x3e7

    if-eq v1, v2, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getOrdinalNumber()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getItem(I)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getItem(Landroid/content/ComponentName;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getItem(Ljava/lang/String;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemPageInApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v1, v2

    :cond_0
    return v1
.end method

.method public getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewByTitle(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    return-object v0
.end method

.method public getOpenedAppsFolderPage()I
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOpenedFolderPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpenedHomeFolderPage()I
    .locals 6

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-interface {v2, v4, v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPageIndexForScreenId(J)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getPageNumberInOverview(I)I
    .locals 2

    if-gez p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberInOverview(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public getPageNumberInOverview(II)I
    .locals 6

    sget-object v3, Lcom/android/launcher3/proxy/LauncherProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPageNumberInOverview : pageNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    packed-switch p2, :pswitch_data_0

    if-eqz v0, :cond_1

    move v1, p1

    :goto_0
    sget-object v3, Lcom/android/launcher3/proxy/LauncherProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPageNumberInOverview : result page="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x2

    goto :goto_0

    :pswitch_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_4
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    goto :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getDefaultPage()I

    move-result v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I
    .locals 5

    sget-object v2, Lcom/android/launcher3/proxy/LauncherProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pageNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/android/launcher3/proxy/BaseProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    const/4 v2, -0x4

    if-ne v2, p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :cond_1
    sget-object v2, Lcom/android/launcher3/proxy/LauncherProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result page="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 v2, -0x5

    if-ne v2, p2, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    if-ne v2, p2, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v2, -0x2

    if-ne v2, p2, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, -0x6

    if-ne v2, p2, :cond_7

    instance-of v2, p1, Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getDefaultPage()I

    move-result v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    const/4 v2, -0x3

    if-ne v2, p2, :cond_8

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    goto :goto_0

    :cond_8
    add-int/lit8 v0, p2, -0x1

    goto :goto_0
.end method

.method public final getSearchResultListCheckedCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getSearchResultListCheckedCount()I

    move-result v0

    return v0
.end method

.method public final getSearchResultListCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getSearchResultListCount()I

    move-result v0

    return v0
.end method

.method public final getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getSecondTopStage()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getSecondTopStageMode()I

    move-result v0

    return v0
.end method

.method public getWidgetItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->getWidgetItemsInfoByComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->getWidgetItemsInfoByTitle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getWidgetView(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetView(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final goHome()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->goHome()V

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->exitSubState()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasAppsBadge()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->hasAppsBadge()Z

    move-result v0

    return v0
.end method

.method public final hasAppsEmptySpace(II)Z
    .locals 2

    move v0, p1

    if-gtz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->hasPageEmptySpace(I)Z

    move-result v1

    return v1
.end method

.method public final hasFolderInApps(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v2, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasFolderInHome(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasHomeEmptySpace(IIII)Z
    .locals 2

    move v0, p1

    if-gtz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1, v0, p3, p4}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->hasPageEmptySpace(III)Z

    move-result v1

    return v1
.end method

.method public final hasItemInApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasItemInFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getFolderItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasItemInHome(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasPageDeleteButton(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->hasPageDeleteButton(I)Z

    move-result v0

    return v0
.end method

.method public final hideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->hideOrUnHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;Z)I

    move-result v0

    return v0
.end method

.method public final hideAppsViewTypePopup()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->hideViewTypePopup()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAllAppsBadgeSwitchChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isAllAppsBadgeSwitchChecked()Z

    move-result v0

    return v0
.end method

.method public final isAlreadySleepMode(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isAlreadySleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isAppsValidPage(I)Z
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isAppsValidPage(II)Z
    .locals 2

    move v0, p1

    if-gtz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->isAppsValidPage(I)Z

    move-result v1

    return v1
.end method

.method public final isAppsViewTypeAlphabetic()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isAvailableSleepMode(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isAvailableSleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->canDisable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final isEmptyPage(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->isEmptyPage(I)Z

    move-result v0

    return v0
.end method

.method public final isEnableAppsButton()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isEnableAppsButton()Z

    move-result v0

    goto :goto_0
.end method

.method public final isFolderValidPage(I)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final isHomeOnlyMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isHomeOnlyMode()Z

    move-result v0

    goto :goto_0
.end method

.method public final isHomeValidPage(I)Z
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isHomeValidPageInOverview(IZ)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v1

    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    move v0, v3

    :goto_0
    if-lt p1, v0, :cond_1

    add-int/lit8 v5, v1, -0x1

    if-ge p1, v5, :cond_1

    :goto_1
    return v3

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public final isSecureFolderSetup()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isSecureFolderSetup()Z

    move-result v0

    return v0
.end method

.method public final isSingleAppBadgeChecked(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isSingleAppBadgeChecked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isUninstallApp(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->canUninstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final lockFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 3

    const/4 v2, -0x1

    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startLockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public final lockSingleApp(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 2

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startLockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mapDirectionToPage(IIZ)I
    .locals 4

    const/4 v2, -0x1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    :goto_0
    invoke-interface {v0}, Lcom/android/launcher3/proxy/BaseProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_1
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_1

    :pswitch_2
    add-int/lit8 v2, p1, -0x1

    goto :goto_1

    :pswitch_3
    add-int/lit8 v2, p1, 0x1

    goto :goto_1

    :pswitch_4
    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getDefaultPage()I

    move-result v2

    goto :goto_1

    :pswitch_5
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final moveAppsFolderItemToPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;III)I
    .locals 4

    const/4 v1, -0x3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-gez p2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v2, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result p2

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-interface {v1, v0, p2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItem(Lcom/android/launcher3/common/view/IconView;I)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    goto :goto_1
.end method

.method public final moveAppsFolderToFollowedEmptyPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;II)I
    .locals 5

    const/4 v2, -0x3

    move v1, p2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-gez p2, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v3, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v1

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-interface {v2, v0, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItemToFollowedEmptyPage(Lcom/android/launcher3/common/view/IconView;I)I

    move-result v2

    goto :goto_0
.end method

.method public final moveAppsItemToFollowedEmptyPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;II)I
    .locals 6

    const/4 v3, -0x3

    move v2, p2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-gez p2, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v4, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v2

    :cond_2
    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsPageCount()I

    move-result v3

    if-lt v2, v3, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v3, v4

    add-int/lit8 v2, v3, 0x1

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    invoke-interface {v3, v1, v2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItemToFollowedEmptyPage(Lcom/android/launcher3/common/view/IconView;I)I

    move-result v3

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v1

    goto :goto_1
.end method

.method public final moveAppsItemToPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;III)I
    .locals 4

    const/4 v1, -0x3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-gez p2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v2, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result p2

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-interface {v1, v0, p2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItem(Lcom/android/launcher3/common/view/IconView;I)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    goto :goto_1
.end method

.method public final moveAppsPage(II)I
    .locals 2

    move v0, p1

    if-gtz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->isAppsValidPage(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x3

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->movePage(I)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final moveFolderItemToHome(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4

    const/4 v1, -0x3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getFolderItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->moveItemFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public final moveFolderPage(II)I
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    move v0, p1

    if-gtz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->isFolderValidPage(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, -0x3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->movePage(I)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final moveHomeItemToPage(Landroid/view/View;III)I
    .locals 1

    if-gtz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result p2

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->moveItem(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public final moveHomePage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePageToItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public final moveHomePageByWidgetItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeWidgetItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePageToItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public final moveItemInFolderToAppsPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;II)I
    .locals 4

    const/4 v1, -0x3

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v2, :cond_1

    const/4 v1, -0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->isAppsValidPage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-interface {v1, v0, p2, p3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItemInFolder(Lcom/android/launcher3/common/view/IconView;II)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    goto :goto_1
.end method

.method public final moveToHomePage(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePage(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public final moveToHomePage(II)I
    .locals 2

    move v0, p1

    if-gtz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    :cond_0
    const/16 v1, -0x3e7

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPage(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x3

    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePage(I)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onParamFillingReceived(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_0

    const-string v0, "AppsFolderView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "HomeFolderView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0, p2}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    if-eqz v0, :cond_4

    const-string v0, "AppsFolderAddIconSearchView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "HomeFolderAddIconSearchView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "HomeSettingsHideAppsView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0, p2}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    if-eqz v0, :cond_2

    const-string v0, "HomePageWidgetSearchView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v0, p2}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    goto :goto_0
.end method

.method public final openAppsFolder(Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v1, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, -0x3

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final openAppsTray()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openAppsTray()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final openFolderAddItemView()I
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v1, -0x2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openFolderAddIconView(Lcom/android/launcher3/folder/view/FolderIconView;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final openFolderColorPanel()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->openBackgroundColorView()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final openHomeFolder(Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final openThemeApp()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final putAppToSleep(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->putToSleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final putToSleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->uninstallOrDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final removeFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 5

    const/4 v2, 0x0

    const/4 v1, -0x3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v3, :cond_3

    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getFolderItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->removeFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move v1, v2

    goto :goto_0
.end method

.method public final removeHomeCurrentPage()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->removeCurrentPage()V

    const/4 v0, 0x0

    return v0
.end method

.method public final removeHomeShortcut(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 v2, -0x3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, -0x2

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->removeShortcut(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final removeHomeWidget(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 6

    instance-of v4, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v4, :cond_0

    const/4 v4, -0x3

    :goto_0
    return v4

    :cond_0
    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v0, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    const/4 v4, -0x2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByPackageName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v5, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->removeWidget(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final removeItemInAppsPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4

    const/4 v1, -0x3

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return v1

    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v2, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final searchWidgetList(Ljava/lang/String;)I
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v1, p1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->search(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final setAddAppsSearchText(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->setSearchText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setAppsPickerProxyCallbacks(Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    return-void
.end method

.method public setAppsProxyCallbacks(Lcom/android/launcher3/proxy/AppsProxyCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    return-void
.end method

.method public setFolderProxyCallbacks(Lcom/android/launcher3/proxy/FolderProxyCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    return-void
.end method

.method public final setHomeCurrentAsMainPage()I
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->setAsMainPage(I)V

    const/4 v2, 0x0

    return v2
.end method

.method public setHomeProxyCallbacks(Lcom/android/launcher3/proxy/HomeProxyCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    return-void
.end method

.method public setLauncherActivityProxyCallbacks(Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    return-void
.end method

.method public setStageManagerProxyCallbacks(Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    return-void
.end method

.method public setWidgetProxyCallbacks(Lcom/android/launcher3/proxy/WidgetProxyCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    return-void
.end method

.method public final showAppInfo(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v1, -0x3

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final showAppsFolderRemovePopUp(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 5

    const/4 v2, -0x3

    const/16 v4, -0x66

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByTitle(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v3, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final showAppsTidyUpPreview()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->showTidyUpPreview()V

    const/4 v0, 0x0

    return v0
.end method

.method public final showAppsViewTypePopup()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->showViewTypePopup()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->hideOrUnHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;Z)I

    move-result v0

    return v0
.end method

.method public final uninstallOrDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->uninstallOrDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final uninstallWidget(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    check-cast p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->uninstallWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unlockFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 3

    const/4 v2, -0x1

    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startUnlockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public final unlockSingleApp(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 2

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startUnlockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const/4 v1, 0x0

    goto :goto_0
.end method
