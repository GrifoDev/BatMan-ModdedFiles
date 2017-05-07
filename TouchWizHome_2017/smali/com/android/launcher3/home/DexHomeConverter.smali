.class public Lcom/android/launcher3/home/DexHomeConverter;
.super Ljava/lang/Object;
.source "DexHomeConverter.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.desktoplauncher.settings"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEX_LAST_SYNC_ID:Ljava/lang/String; = "dex_last_sync_id"

.field public static final DEX_NEED_TO_SYNC:Ljava/lang/String; = "dex_need_to_sync"

.field private static final DEX_REF_ID:Ljava/lang/String; = "ref_id"

.field private static final DEX_SET_REF_ID:Ljava/lang/String; = "set_ref_id"

.field public static final DEX_SYNC_ENABLED:Ljava/lang/String; = "persist.service.dex.homesync"

.field public static final TAG:Ljava/lang/String; = "DexHomeConverter"


# instance fields
.field private final COL_CONTAINER:I

.field private final COL_ICON:I

.field private final COL_ICON_PACKAGE:I

.field private final COL_ICON_RESOURCE:I

.field private final COL_ICON_TYPE:I

.field private final COL_ID:I

.field private final COL_INTENT:I

.field private final COL_ITEM_TYPE:I

.field private final COL_PROFILE_ID:I

.field private final COL_REF_ID:I

.field private final COL_TITLE:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field final mDexContainerList:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field final mDexFolderTitleList:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field private mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

.field private mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

.field private mModelWorker:Landroid/os/Handler;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private final mProjection:[Ljava/lang/String;

.field private mUseFeature:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.desktoplauncher.settings/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/DexHomeConverter;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/home/HomeLoader;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/launcher3/home/DexHomeConverter;->mUseFeature:Z

    iput-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mModelWorker:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    iput-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "ref_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "container"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "itemType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "intent"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "iconType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "iconPackage"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "iconResource"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "profileId"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mProjection:[Ljava/lang/String;

    iput v3, p0, Lcom/android/launcher3/home/DexHomeConverter;->COL_ID:I

    iput v4, p0, Lcom/android/launcher3/home/DexHomeConverter;->COL_REF_ID:I

    iput v5, p0, Lcom/android/launcher3/home/DexHomeConverter;->COL_TITLE:I

    iput v6, p0, Lcom/android/launcher3/home/DexHomeConverter;->COL_CONTAINER:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->COL_ITEM_TYPE:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->COL_INTENT:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->COL_ICON_TYPE:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->COL_ICON_PACKAGE:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->COL_ICON_RESOURCE:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->COL_ICON:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->COL_PROFILE_ID:I

    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mDexFolderTitleList:Lcom/android/launcher3/util/LongArrayMap;

    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mDexContainerList:Lcom/android/launcher3/util/LongArrayMap;

    iput-object p1, p0, Lcom/android/launcher3/home/DexHomeConverter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->getUpdater()Lcom/android/launcher3/common/model/DataUpdater;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mModelWorker:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v0, Lcom/android/launcher3/home/DexHomeConverter$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/DexHomeConverter$1;-><init>(Lcom/android/launcher3/home/DexHomeConverter;)V

    iput-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/DexHomeConverter;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/DexHomeConverter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/DexHomeConverter;->syncItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/DexHomeConverter;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method private addAppItem(Landroid/content/Intent;ILcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/launcher3/home/DexHomeConverter;->getActivityInfo(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/DexHomeConverter;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->fromActivityInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    int-to-long v2, p2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/home/DexHomeConverter;->applyItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;J)V

    :cond_0
    return-object v0
.end method

.method private addFolderItem(Ljava/lang/String;I)Lcom/android/launcher3/folder/FolderInfo;
    .locals 4

    new-instance v0, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    iput-object p1, v0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    int-to-long v2, p2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/home/DexHomeConverter;->applyItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;J)V

    return-object v0
.end method

.method private addShortcutItem(Landroid/content/Intent;ILcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v2, p0, Lcom/android/launcher3/home/DexHomeConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/home/HomeLoader;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    int-to-long v2, p2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/home/DexHomeConverter;->applyItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;J)V

    return-object v0
.end method

.method private applyItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;J)V
    .locals 14

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v1, v4

    aput v5, v1, v0

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJII)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount()I

    move-result v12

    const/4 v11, 0x1

    :goto_1
    if-ge v11, v12, :cond_1

    if-nez v10, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/launcher3/home/DexHomeConverter;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    int-to-long v6, v11

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJII)Z

    move-result v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    if-nez v10, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v4, p0, Lcom/android/launcher3/home/DexHomeConverter;->mContext:Landroid/content/Context;

    const-wide/16 v6, -0x1

    invoke-virtual {v0, v4, v12, v6, v7}, Lcom/android/launcher3/home/HomeLoader;->insertWorkspaceScreen(Landroid/content/Context;IJ)J

    move-result-wide v2

    :cond_2
    iput-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const/4 v0, 0x0

    aget v0, v1, v0

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    const/4 v0, 0x1

    aget v0, v1, v0

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/4 v0, 0x1

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    const-wide/16 v4, -0x64

    iput-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    goto :goto_0
.end method

.method private getActivityInfo(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .locals 5

    iget-object v3, p0, Lcom/android/launcher3/home/DexHomeConverter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    invoke-virtual {v1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAndFillLastSyncItems()Lcom/android/launcher3/util/LongArrayMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v14, 0x2

    new-instance v10, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v10}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mDexFolderTitleList:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mDexContainerList:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/home/DexHomeConverter;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/home/DexHomeConverter;->mProjection:[Ljava/lang/String;

    const-string v3, "ref_id is not NULL AND ref_id > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v8, v9, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mDexContainerList:Lcom/android/launcher3/util/LongArrayMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v12, v13, v1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v14, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mDexFolderTitleList:Lcom/android/launcher3/util/LongArrayMap;

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v13, v1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string v0, "DexHomeConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAndFillLastSyncItems : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-object v10

    :cond_2
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private syncAddedItems(JLjava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/util/LongArrayMap;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            ">;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/DexHomeConverter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "dex_last_sync_id"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v26

    cmp-long v4, p1, v26

    if-gtz v4, :cond_0

    :goto_0
    return-object v10

    :cond_0
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/DexHomeConverter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/launcher3/home/DexHomeConverter;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mProjection:[Ljava/lang/String;

    const-string v7, "ref_id is NULL OR ref_id = -1"

    const/4 v8, 0x0

    const-string v9, "cellX, cellY"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_b

    :cond_1
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_b

    const/16 v24, 0x0

    const/4 v4, 0x4

    :try_start_1
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v4, 0xa

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v30, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v30, v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v29

    :goto_2
    if-nez v25, :cond_4

    const/4 v4, 0x5

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v11, v2}, Lcom/android/launcher3/home/DexHomeConverter;->addAppItem(Landroid/content/Intent;ILcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v24

    if-nez v24, :cond_5

    const-string v4, "DexHomeConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No exist Item : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v16

    :try_start_2
    const-string v4, "DexHomeConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inner syncAddedItems : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v16

    :try_start_3
    const-string v4, "DexHomeConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncAddedItems : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_3
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v17, :cond_c

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    int-to-long v6, v4

    move-object/from16 v0, v19

    iput-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v4, v19

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    const-string v4, "DexHomeConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " will be placed into new folder : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/home/HomeLoader;->getUser(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v29

    goto/16 :goto_2

    :cond_4
    const/4 v4, 0x2

    move/from16 v0, v25

    if-ne v0, v4, :cond_7

    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/android/launcher3/home/DexHomeConverter;->addFolderItem(Ljava/lang/String;I)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v24

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v6, v4

    move-object/from16 v0, v24

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    move-object v4, v0

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v7, v4}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    const-string v4, "DexHomeConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " folder will be created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_5
    if-eqz v24, :cond_1

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/base/item/ItemInfo;->setDexID(J)V

    if-gez v11, :cond_a

    const-string v4, "DexHomeConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " will be added : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/DexHomeConverter;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v24

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v4, v6, v7, v5, v8}, Lcom/android/launcher3/home/HomeItemPositionHelper;->addToPreservedPosition(JII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4

    :cond_7
    const/4 v4, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_5

    :try_start_5
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.launcher.action.INSTALL_SHORTCUT"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.INTENT"

    const/4 v5, 0x5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.NAME"

    const/4 v5, 0x2

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x6

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v20, 0x0

    if-nez v22, :cond_8

    new-instance v21, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    const/4 v4, 0x7

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v20

    :cond_8
    if-nez v20, :cond_9

    const/16 v4, 0x9

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    const/4 v4, 0x0

    array-length v5, v13

    invoke-static {v13, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v20

    const-string v4, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v11, v2}, Lcom/android/launcher3/home/DexHomeConverter;->addShortcutItem(Landroid/content/Intent;ILcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v24

    goto/16 :goto_5

    :cond_a
    const-string v4, "DexHomeConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " will be placed into folder("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") on Dex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v4, v11

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :cond_b
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v4, v14, v15}, Lcom/android/launcher3/home/HomeLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v4, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_d

    move-object/from16 v17, v18

    check-cast v17, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-object/from16 v0, v19

    iput-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    int-to-long v6, v4

    move-object/from16 v0, v19

    iput-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "DexHomeConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " will be placed into previous folder : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_d
    const-string v4, "DexHomeConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Folder id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isn\'t exist!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_e
    const-string v4, "DexHomeConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Folder id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isn\'t exist on idList"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_f
    const-string v4, "DexHomeConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dex Sync - add item : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", folder child count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private syncItems()V
    .locals 40

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeItemPositionHelper;->clearPreservedPosition()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-wide/16 v22, 0x0

    const/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/launcher3/home/DexHomeConverter;->CONTENT_URI:Landroid/net/Uri;

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v8, v0, [Ljava/lang/String;

    const/16 v36, 0x0

    const-string v37, "modified"

    aput-object v37, v8, v36

    const/16 v36, 0x1

    const-string v37, "ref_id"

    aput-object v37, v8, v36

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "modified DESC LIMIT 1"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_20

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "DexHomeConverter"

    const-string v7, "Check Precondition : DeX Launcher not Ready."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    const-string v6, "dex_need_to_sync"

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_0
    move-wide/from16 v8, v22

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    :goto_1
    if-eqz v20, :cond_2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v6, "DexHomeConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "syncItems() - "

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/DexHomeConverter;->getAndFillLastSyncItems()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeLoader;->getItemsForDexSync()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v12}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/home/HomeLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v6

    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mDexContainerList:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/Pair;

    move-object/from16 v0, v32

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    const-wide/16 v38, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/DexHomeConverter;->notifyItemId(JJ)V

    const-string v6, "DexHomeConverter"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Last sync completed item. but not in our DB : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v24

    :try_start_2
    const-string v6, "DexHomeConverter"

    const-string v7, "Check Precondition : DeX Launcher not Ready."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "no such column: ref_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "DexHomeConverter"

    const-string v7, "DEX_REF_ID : no such column meaning that DeX sync isn\'t ready state."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "dex_need_to_sync"

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    if-eqz v20, :cond_5

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_5
    move-wide/from16 v8, v22

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v6

    :cond_7
    new-instance v11, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v11}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher3/home/DexHomeConverter;->syncAddedItems(JLjava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/util/LongArrayMap;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v14

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/util/Pair;

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v18, -0x1

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mDexContainerList:Lcom/android/launcher3/util/LongArrayMap;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v6

    if-nez v6, :cond_b

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x0

    cmp-long v6, v36, v38

    if-lez v6, :cond_a

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    long-to-int v6, v0

    invoke-static {v6}, Lcom/android/launcher3/common/model/DataLoader;->getFolderInfo(I)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v6, "DexHomeConverter"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " will be removed to due Dex Sync"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mDexContainerList:Lcom/android/launcher3/util/LongArrayMap;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    const-wide/16 v38, 0x0

    cmp-long v6, v36, v38

    if-lez v6, :cond_12

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-virtual {v11, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v6

    if-eqz v6, :cond_11

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-virtual {v11, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v6, v28

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    const-wide/16 v36, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/item/ItemInfo;->setDexID(J)V

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-wide/from16 v18, v0

    :goto_5
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v36, v0

    cmp-long v6, v36, v18

    if-eqz v6, :cond_10

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v36, v0

    const-wide/16 v38, -0x65

    cmp-long v6, v36, v38

    if-nez v6, :cond_c

    const-wide/16 v36, -0x64

    cmp-long v6, v18, v36

    if-eqz v6, :cond_9

    :cond_c
    const-string v6, "DexHomeConverter"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " container("

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v38, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ") changed to : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x0

    cmp-long v6, v36, v38

    if-lez v6, :cond_d

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    long-to-int v6, v0

    invoke-static {v6}, Lcom/android/launcher3/common/model/DataLoader;->getFolderInfo(I)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-wide/16 v36, 0x0

    cmp-long v6, v18, v36

    if-lez v6, :cond_e

    move-wide/from16 v0, v18

    long-to-int v6, v0

    invoke-static {v6}, Lcom/android/launcher3/common/model/DataLoader;->getFolderInfo(I)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const-wide/16 v36, -0x1

    cmp-long v6, v18, v36

    if-nez v6, :cond_f

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-virtual {v11, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/item/ItemInfo;->setPrevContainer(J)V

    move-wide/from16 v0, v18

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/16 v36, 0x2

    move/from16 v0, v36

    if-ne v6, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mDexFolderTitleList:Lcom/android/launcher3/util/LongArrayMap;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "title"

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/HomeLoader;->updateFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const-string v6, "DexHomeConverter"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Folder("

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v38, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ") Title Changed : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto/16 :goto_5

    :cond_13
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/DexHomeConverter;->mContext:Landroid/content/Context;

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v6, v7, v14, v0}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mModelWorker:Landroid/os/Handler;

    new-instance v7, Lcom/android/launcher3/home/DexHomeConverter$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v11}, Lcom/android/launcher3/home/DexHomeConverter$3;-><init>(Lcom/android/launcher3/home/DexHomeConverter;Lcom/android/launcher3/util/LongArrayMap;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mModelWorker:Landroid/os/Handler;

    new-instance v7, Lcom/android/launcher3/home/DexHomeConverter$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v7, v0, v1}, Lcom/android/launcher3/home/DexHomeConverter$4;-><init>(Lcom/android/launcher3/home/DexHomeConverter;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_18

    const-string v6, "DexHomeConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Dex Sync - modified item : "

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual/range {v35 .. v35}, Landroid/content/ContentValues;->clear()V

    const-string v7, "container"

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v36, v0

    const-wide/16 v38, -0x64

    cmp-long v7, v36, v38

    if-nez v7, :cond_16

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/DexHomeConverter;->applyItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;J)V

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "screen"

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "cellX"

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "cellY"

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/DexHomeConverter;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_6

    :cond_17
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_18

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v6, v15}, Lcom/android/launcher3/home/HomeLoader;->bindItems(Ljava/util/ArrayList;)V

    :cond_18
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_19

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1e

    :cond_19
    const-string v6, "DexHomeConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Dex Sync - changed folder : +"

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v36, ", -"

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/util/Pair;

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v26, :cond_1a

    if-eqz v30, :cond_1a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, v26

    move-object/from16 v2, v30

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/launcher3/home/HomeLoader;->updateContainerForDexSync(ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V

    const-string v7, "DexHomeConverter"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    move-wide/from16 v38, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", put in Folder("

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-wide/from16 v38, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ") : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1a
    const-string v7, "DexHomeConverter"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Put in null item : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "/"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1b
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1c
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/util/Pair;

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    if-eqz v26, :cond_1d

    if-eqz v30, :cond_1d

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v26

    move-object/from16 v2, v30

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/launcher3/home/HomeLoader;->updateContainerForDexSync(ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V

    const-string v7, "DexHomeConverter"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    move-wide/from16 v38, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", Out from Folder : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_1d
    const-string v7, "DexHomeConverter"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Put out null item : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "/"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1e
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/HomeLoader;->removeWorkspaceItem(Ljava/util/ArrayList;)V

    const-string v6, "DexHomeConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Dex Sync - remove item : "

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const-string v6, "dex_last_sync_id"

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v6, "dex_need_to_sync"

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/DexHomeConverter;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeItemPositionHelper;->clearPreservedPosition()V

    goto/16 :goto_0

    :cond_20
    move-wide/from16 v8, v22

    goto/16 :goto_1
.end method


# virtual methods
.method notifyItemId(JJ)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/launcher3/home/DexHomeConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/home/DexHomeConverter;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    const/4 v4, 0x2

    :try_start_0
    new-array v3, v4, [J

    const/4 v4, 0x0

    aput-wide p1, v3, v4

    const/4 v4, 0x1

    aput-wide p3, v3, v4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ref_id"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v4, "set_ref_id"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string v4, "DexHomeConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyItemId - DeX Id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Home Id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v4, "DexHomeConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyItemId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startSync()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mUseFeature:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "dex_need_to_sync"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.service.dex.homesync"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DexHomeConverter"

    const-string v1, "dex.homesync : Option off"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/DexHomeConverter;->mModelWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/home/DexHomeConverter$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/DexHomeConverter$2;-><init>(Lcom/android/launcher3/home/DexHomeConverter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
