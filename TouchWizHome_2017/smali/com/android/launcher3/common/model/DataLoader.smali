.class public abstract Lcom/android/launcher3/common/model/DataLoader;
.super Ljava/lang/Object;
.source "DataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;,
        Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;,
        Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;,
        Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    }
.end annotation


# static fields
.field protected static final STK_PKG_LIST:[Ljava/lang/String;

.field protected static final STK_SPLIT:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "DataLoader"

.field protected static mIsBootCompleted:Z

.field protected static sBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

.field protected static final sBgDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MultiHashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sBgFolders:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sBgLock:Ljava/lang/Object;

.field protected static final sBgPinnedShortcutCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;",
            "Landroid/util/MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sBindCompleteRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected static sContentResolver:Landroid/content/ContentResolver;

.field protected static sContext:Landroid/content/Context;

.field protected static sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

.field protected static sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

.field protected static sIconCache:Lcom/android/launcher3/common/model/IconCache;

.field protected static volatile sInstallingPkgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static sIsLoadingAndBindingWorkspace:Z

.field protected static sIsSafeMode:Z

.field protected static sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

.field protected static sLauncherModel:Lcom/android/launcher3/LauncherModel;

.field private static final sLoaderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/model/DataLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static sOmcActivity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static sPackageManager:Landroid/content/pm/PackageManager;

.field protected static final sPendingPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

.field protected static sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

.field protected static sWorkerHandler:Landroid/os/Handler;


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBgOrderedScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBgPagesItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mDeepShortcutManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

.field protected final mDeferredBindRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field protected mIsPageLoaded:[Z

.field protected mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

.field protected mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

.field protected mQuietModeUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mShortcutKeyToPinnedShortcuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    new-instance v0, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgPinnedShortcutCounts:Ljava/util/Map;

    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sPendingPackages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sOmcActivity:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.stk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.stk2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->STK_PKG_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mBgPagesItems:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->added:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->removed:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->modified:Ljava/util/ArrayList;

    return-void
.end method

.method public static decrementPinnedShortcutCount(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V
    .locals 3

    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgPinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MutableInt;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/MutableInt;->value:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/util/MutableInt;->value:I

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->unpinShortcut(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v8, v3, v0}, Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;->filterItem(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v6, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v6, :cond_3

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v6, v3, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v3, v4, v0}, Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;->filterItem(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    instance-of v6, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v6, :cond_0

    if-nez p2, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v0, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-interface {p1, v8, v3, v0}, Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;->filterItem(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v5
.end method

.method protected static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static findActivityInfo(Ljava/util/List;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static getFolderInfo(I)Lcom/android/launcher3/folder/FolderInfo;
    .locals 4

    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/common/model/DataLoader$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/DataLoader$2;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-static {v1, v0, p2}, Lcom/android/launcher3/common/model/DataLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getItemInfoByComponentName(Landroid/content/ComponentName;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/common/model/DataLoader$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/launcher3/common/model/DataLoader$3;-><init>(Lcom/android/launcher3/common/model/DataLoader;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p2, v0, p4}, Lcom/android/launcher3/common/model/DataLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getItemList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public static getItemsByPackageName(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/common/model/DataLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/DataLoader$1;-><init>(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/android/launcher3/common/model/DataLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static incrementPinnedShortcutCount(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;Z)V
    .locals 4

    const/4 v3, 0x1

    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgPinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MutableInt;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/MutableInt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgPinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz p1, :cond_0

    iget v1, v0, Landroid/util/MutableInt;->value:I

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->pinShortcut(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    iget v1, v0, Landroid/util/MutableInt;->value:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/util/MutableInt;->value:I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static loadDefaultLayoutIfNecessary()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/customer/PostPositionController;->isReloadNeeded()Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/model/DataLoader;

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v10, v11}, Lcom/android/launcher3/common/model/DataLoader;->loadDefaultLayout(Lcom/android/launcher3/common/model/AutoInstallsLayout;ZZ)V

    goto :goto_0

    :cond_0
    new-array v5, v11, [Ljava/lang/String;

    const/16 v8, 0x20

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v10

    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "restored=?"

    invoke-virtual {v8, v9, v10, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const-string v8, "DataLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "noFDR OMCItem - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " items removed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/customer/PostPositionController;->checkAndEnablePositioner()V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v8, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string v8, "EMPTY_DATABASE_CREATED"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "DataLoader"

    const-string v9, "loading default workspace"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_3
    :goto_1
    if-eqz v2, :cond_7

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->get(Landroid/content/Context;)Lcom/android/launcher3/common/model/AutoInstallsLayout;

    move-result-object v1

    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->loadOmcIfNecessary(Landroid/content/Context;)V

    :cond_4
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/model/DataLoader;

    invoke-virtual {v3, v1, v0, v10}, Lcom/android/launcher3/common/model/DataLoader;->loadDefaultLayout(Lcom/android/launcher3/common/model/AutoInstallsLayout;ZZ)V

    goto :goto_2

    :cond_5
    const-string v8, "EMPTY_DATABASE_SWITCHED"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "DataLoader"

    const-string v9, "loading default workspace without switch table"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move v2, v0

    goto :goto_1

    :cond_6
    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V

    :cond_7
    :goto_3
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v8, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->checkChangedComponentExist(Z)V

    if-eqz v2, :cond_1

    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/model/DataLoader;

    invoke-virtual {v3}, Lcom/android/launcher3/common/model/DataLoader;->loadDefaultLayoutCompleted()V

    goto :goto_4

    :cond_8
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v8}, Lcom/android/launcher3/common/model/FavoritesProvider;->clearFlagEmptyDbSwitched()V

    goto :goto_3
.end method

.method protected static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static setDeviceProfile(Lcom/android/launcher3/common/deviceprofile/DeviceProfile;)V
    .locals 0

    sput-object p0, Lcom/android/launcher3/common/model/DataLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    return-void
.end method

.method public static setInstallingPackage(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sInstallingPkgs:Ljava/util/HashMap;

    :goto_0
    invoke-static {p0}, Lcom/android/launcher3/common/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/PackageInstallerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/PackageInstallerCompat;->updateAndGetActiveSessionCache()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sInstallingPkgs:Ljava/util/HashMap;

    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public static setLoadingAndBindingWorkspace(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/launcher3/common/model/DataLoader;->sIsLoadingAndBindingWorkspace:Z

    return-void
.end method

.method public static updateBadgeCounts(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher3/common/model/BadgeCache$CacheKey;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v9, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v8}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v8, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_1

    move-object v0, v5

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v3, v0

    iget-object v8, v1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    if-eq v8, v6, :cond_1

    iput v6, v3, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_2
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v7
.end method

.method private declared-synchronized updatePackageActivities(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v0, v11

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v2, v0

    iget-object v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_0

    iget-object v3, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p3

    invoke-static {v0, v8}, Lcom/android/launcher3/common/model/DataLoader;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, p4

    invoke-virtual {v3, v8, v0}, Lcom/android/launcher3/common/model/IconCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v3, v11}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/4 v3, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v8, v0, v1, v3}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v0, v11

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v9, v0

    const/4 v5, 0x0

    iput v5, v9, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    iget-object v5, p0, Lcom/android/launcher3/common/model/DataLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    if-eqz v3, :cond_2

    new-instance v2, Lcom/android/launcher3/common/base/item/IconInfo;

    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    sget-object v5, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v7

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/model/IconCache;Z)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    const-wide/16 v6, -0x66

    iput-wide v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    monitor-exit p0

    return-void
.end method


# virtual methods
.method protected declared-synchronized addAppToPendingPackages(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected addDeferredBindRunnable(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method protected backupStkPositionIfNecessary(Ljava/lang/String;JJII)V
    .locals 10

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->STK_PKG_LIST:[Ljava/lang/String;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v5, v7, v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_0

    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v6, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v1

    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v6, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v2

    if-ltz p6, :cond_3

    if-ltz p7, :cond_3

    move/from16 v0, p6

    if-ge v0, v1, :cond_3

    move/from16 v0, p7

    if-lt v0, v2, :cond_5

    :cond_3
    const-string v6, "DataLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stk outside position cellX : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cellY : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, p1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public bindDeepShortcuts()V
    .locals 3

    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/MultiHashMap;->clone()Lcom/android/launcher3/util/MultiHashMap;

    move-result-object v1

    new-instance v0, Lcom/android/launcher3/common/model/DataLoader$4;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/common/model/DataLoader$4;-><init>(Lcom/android/launcher3/common/model/DataLoader;Lcom/android/launcher3/util/MultiHashMap;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/model/DataLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
.end method

.method public abstract bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")V"
        }
    .end annotation
.end method

.method public clearDeferredBindRunnable()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract clearSBgDataStructures()V
.end method

.method public abstract containPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
.end method

.method public abstract filterCurrentPageItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method protected getAllApps()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getBadgeCount(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)I
    .locals 2

    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    new-instance v1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeCache;->getBadgeCount(Lcom/android/launcher3/common/model/BadgeCache$CacheKey;)I

    move-result v0

    return v0
.end method

.method protected getNeedTitleUpdateIcons(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/launcher3/common/base/item/IconInfo;->isAppShortcut:Z

    if-eqz v5, :cond_0

    :cond_1
    new-instance v4, Landroid/content/Intent;

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v5, Lcom/android/launcher3/common/model/DataLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v6, v2}, Lcom/android/launcher3/common/model/IconCache;->getPackageItemTitle(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    sget-object v9, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v6, v0

    iget-object v10, v6, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v9, v10, v6}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method protected getRestoredItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;ILcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    if-eqz p1, :cond_2

    iget v3, p5, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    :goto_0
    iput v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    and-int/lit8 v3, p4, 0x4

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v3, p2, v1}, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->getRestoreDummyInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/IconInfo;)V

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    const-string v3, "DataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRestoredItemInfo SCloud dummy icon is null cn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    :cond_0
    :goto_1
    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    const-string v3, ""

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    :cond_1
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object p3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    iput p4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    return-object v1

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    move-object v0, v2

    :goto_2
    if-nez v0, :cond_6

    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v1, p3, v5, v4}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    :goto_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    if-eqz p1, :cond_4

    iget v3, p5, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-virtual {p5, p1, v1, v3}, Lcom/android/launcher3/common/model/CursorInfo;->loadIcon(Landroid/database/Cursor;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v3, v0, p2}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    goto :goto_3

    :cond_7
    and-int/lit8 v3, p4, 0x2

    if-nez v3, :cond_8

    and-int/lit8 v3, p4, 0x20

    if-nez v3, :cond_8

    and-int/lit8 v3, p4, 0x4

    if-eqz v3, :cond_a

    :cond_8
    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_9

    iget v3, p5, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_a
    new-instance v3, Ljava/security/InvalidParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid restoreType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getRestoredItemIntent(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 2

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sOmcActivity:Ljava/util/List;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sOmcActivity:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->getOmcIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getOmcIntent()Landroid/content/Intent;

    move-result-object p1

    goto :goto_0
.end method

.method protected getUnRestoredItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_1

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    :goto_1
    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v0, v8}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v10, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    goto :goto_0

    :cond_1
    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "DataLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update restored value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "restored"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "_id"

    invoke-static {v9, v5}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5
    return-object v4
.end method

.method protected abstract getUpdater()Lcom/android/launcher3/common/model/DataUpdater;
.end method

.method protected init(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;Lcom/android/launcher3/common/model/DataLoader;)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p1, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/common/model/DataLoader;->sIsSafeMode:Z

    invoke-static {p1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->getOmcIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sOmcActivity:Ljava/util/List;

    sput-object p4, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    sput-object p5, Lcom/android/launcher3/common/model/DataLoader;->sBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    sput-object p3, Lcom/android/launcher3/common/model/DataLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherModel;->getHandler()Lcom/android/launcher3/common/model/DeferredHandler;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeepShortcutManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    invoke-virtual {p0}, Lcom/android/launcher3/common/model/DataLoader;->updateUsersList()V

    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected isNotAvailableApps(Ljava/lang/String;)I
    .locals 8

    const/4 v3, 0x1

    const/4 v5, 0x0

    :try_start_0
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x2000

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    move v4, v3

    :goto_0
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    move v2, v3

    :goto_1
    if-nez v4, :cond_4

    if-nez v2, :cond_4

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    :goto_2
    sget-boolean v6, Lcom/android/launcher3/common/model/DataLoader;->sIsSafeMode:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_5

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v5, 0x2

    :cond_1
    :goto_3
    return v5

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_1

    const/16 v5, 0x20

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method protected isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;->isStopped()Z

    move-result v0

    goto :goto_0
.end method

.method protected loadDefaultLayout(Lcom/android/launcher3/common/model/AutoInstallsLayout;ZZ)V
    .locals 0

    return-void
.end method

.method protected loadDefaultLayoutCompleted()V
    .locals 0

    return-void
.end method

.method protected abstract loadPageItems(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected makeFoldersIdToString(Lcom/android/launcher3/util/LongArrayMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Lcom/android/launcher3/util/StringJoiner;

    const-string v2, ","

    invoke-direct {v1, v2}, Lcom/android/launcher3/util/StringJoiner;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/util/StringJoiner;->append(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4

    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    instance-of v0, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v9, v11

    check-cast v9, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v8, v9, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_0

    iget-object v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p3, v0}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    iget-wide v2, v9, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iget-wide v4, v9, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iget v6, v9, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v7, v9, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/common/model/DataLoader;->backupStkPositionIfNecessary(Ljava/lang/String;JJII)V

    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v0, v8, p3}, Lcom/android/launcher3/common/model/IconCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract removeUnRestoredItems(Z)V
.end method

.method protected runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected setBadgeCount(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 4

    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    new-instance v1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeCache;->getBadgeCount(Lcom/android/launcher3/common/model/BadgeCache$CacheKey;)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    return-void
.end method

.method public setLoaderTaskStop(Z)V
    .locals 4

    const-string v1, "DataLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLoaderTaskStop isStopped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    if-eqz v0, :cond_0

    const-string v1, "DataLoader"

    const-string v2, "oldTask is not null. set stop & cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;->setStopped(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public abstract setOrderedScreen(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setup(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
.end method

.method protected sortItemsInFolder(Lcom/android/launcher3/util/LongArrayMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->sortContents()V

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v4, v4, Lcom/android/launcher3/common/base/item/IconInfo;->usingLowResIcon:Z

    if-eqz v4, :cond_4

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    sget-object v4, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;Z)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x9

    if-lt v3, v4, :cond_3

    goto :goto_0
.end method

.method public abstract titleUpdate()V
.end method

.method public abstract unbindItemsOnMainThread()V
.end method

.method public updateDeepShortcutMap(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    sget-object v5, Lcom/android/launcher3/common/model/DataLoader;->sBgDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v5}, Lcom/android/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/ComponentKey;

    iget-object v5, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/android/launcher3/util/ComponentKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v5, p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    new-instance v4, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sBgDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected updateItem(JLandroid/content/ContentValues;)V
    .locals 7

    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updatePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v1, p1, p3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    const-string v1, "DataLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.sec.android.app.magnifier"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/common/model/DataLoader;->removePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/launcher3/common/model/DataLoader;->updatePackageActivities(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_0
.end method

.method public abstract updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V
.end method

.method public abstract updatePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract updateUnavailablePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
.end method

.method public updateUsersList()V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mAllUsers:Landroid/util/LongSparseArray;

    if-nez v3, :cond_0

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mAllUsers:Landroid/util/LongSparseArray;

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    if-nez v3, :cond_1

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/compat/UserHandleCompat;

    sget-object v4, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/launcher3/common/model/DataLoader;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/launcher3/common/model/DataLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    sget-object v5, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method
