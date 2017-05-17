.class public Lcom/android/launcher3/home/HomeLoader;
.super Lcom/android/launcher3/common/model/DataLoader;
.source "HomeLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;,
        Lcom/android/launcher3/home/HomeLoader$AppsAvailabilityCheck;,
        Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;,
        Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    }
.end annotation


# static fields
.field private static final ACTION_APPWIDGET_SINGLE_INSTANCE:Ljava/lang/String; = "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE"

.field private static final ACTION_APPWIDGET_SINGLE_INSTANCE_PACKAGE:Ljava/lang/String; = "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE_PACKAGE"

.field private static final HOTSEAT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_SCREEN_ID:J = -0x1L

.field private static final ITEMS_CHUNK:I = 0x6

.field private static final TAG:Ljava/lang/String; = "HomeLoader"

.field private static final sBgWidgetLock:Ljava/lang/Object;

.field static sBgWidgetProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG_LOADERS:Z

.field private final EASY_APPS_INDEX:I

.field private final OCCUPIED_HOTSEAT:I

.field private final OCCUPIED_WORKSPACE:I

.field private final OUTSIDE_ITEM:I

.field private final OVERLAP_ITEM:I

.field private final REMOVE_ITEM:I

.field private final RESTORED_ITEM:I

.field private final mBgHotseatItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraItemsAfterGridChanged:Ljava/util/HashMap;
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

.field private mIsFirstBind:Z

.field private mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

.field private final mLock:Ljava/lang/Object;

.field private mNewPageIdsAfterGridChanged:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/home/HomeLoader$32;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeLoader$32;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeLoader;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;)V
    .locals 7

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/launcher3/common/model/DataLoader;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeLoader;->DEBUG_LOADERS:Z

    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeLoader;->mIsFirstBind:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mNewPageIdsAfterGridChanged:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mExtraItemsAfterGridChanged:Ljava/util/HashMap;

    iput v1, p0, Lcom/android/launcher3/home/HomeLoader;->REMOVE_ITEM:I

    iput v3, p0, Lcom/android/launcher3/home/HomeLoader;->RESTORED_ITEM:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/home/HomeLoader;->OUTSIDE_ITEM:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/home/HomeLoader;->OVERLAP_ITEM:I

    iput v2, p0, Lcom/android/launcher3/home/HomeLoader;->OCCUPIED_WORKSPACE:I

    iput v1, p0, Lcom/android/launcher3/home/HomeLoader;->OCCUPIED_HOTSEAT:I

    iput v3, p0, Lcom/android/launcher3/home/HomeLoader;->EASY_APPS_INDEX:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/home/HomeLoader;->init(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;Lcom/android/launcher3/common/model/DataLoader;)V

    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-direct {v0, p1, p3, p4, p0}, Lcom/android/launcher3/common/model/FavoritesUpdater;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/DataLoader;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    new-instance v0, Lcom/android/launcher3/home/HomeItemPositionHelper;

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/HomeItemPositionHelper;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeItemPositionHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader;->mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    return-object p1
.end method

.method static synthetic access$1100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->restoreStkPositionIfNecessary(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1300()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    return-object v0
.end method

.method static synthetic access$1500()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/content/ContentResolver;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/home/HomeLoader;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->doHandlingItems(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mExtraItemsAfterGridChanged:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mNewPageIdsAfterGridChanged:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/HomeLoader;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsPageLoaded:[Z

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200()Landroid/content/ContentResolver;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher3/home/HomeLoader;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->makeSingleInstanceAppWidgetList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getWidgetsInHome()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->checkAppWidgetSingleInstanceList(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->bindFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/HomeLoader;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsPageLoaded:[Z

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/launcher3/home/HomeLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsSdCardReady:Z

    return v0
.end method

.method static synthetic access$3400()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sPendingPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3500()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3600()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader;->mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    return-object p1
.end method

.method static synthetic access$3800(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->tryGetCallbacks(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    return-object p1
.end method

.method static synthetic access$4102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/launcher3/home/HomeLoader;->sIsLoadingAndBindingWorkspace:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/android/launcher3/home/HomeLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->runAllBindCompleteRunnables()V

    return-void
.end method

.method static synthetic access$4302(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$4500()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4600()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sPendingPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4700()Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    return-object v0
.end method

.method static synthetic access$4800()Landroid/content/pm/PackageManager;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$4900()Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    return-object v0
.end method

.method static synthetic access$5000()Lcom/android/launcher3/LauncherModel;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$5100()Lcom/android/launcher3/LauncherModel;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$5200()Lcom/android/launcher3/LauncherModel;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$5300()Lcom/android/launcher3/LauncherModel;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$5400()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sPendingPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600()Lcom/android/launcher3/common/model/DeferredHandler;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$5700()Lcom/android/launcher3/common/model/IconCache;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    return-object v0
.end method

.method static synthetic access$5800()Lcom/android/launcher3/common/model/IconCache;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    return-object v0
.end method

.method static synthetic access$5900()Lcom/android/launcher3/common/model/DeferredHandler;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$6300()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$6500()Lcom/android/launcher3/common/model/FavoritesProvider;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)Landroid/util/Pair;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/HomeLoader;->findSpaceForItem(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700()Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/launcher3/home/HomeLoader;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->getCellXFromHotseatOrder(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/android/launcher3/home/HomeLoader;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->getCellYFromHotseatOrder(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$7500()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7600()Lcom/android/launcher3/common/model/FavoritesProvider;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    return-object v0
.end method

.method static synthetic access$7700()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/launcher3/home/HomeLoader;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->shortcutExists(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7900()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$8400()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8500()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$8800()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$900()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$9100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9200()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$9300()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/home/HomeLoader;->sIsLoadingAndBindingWorkspace:Z

    return v0
.end method

.method static synthetic access$9400()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9500()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9600(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addAppsButtonForEasy()V
    .locals 6

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->createAppsButton(Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonEnabled(Z)V

    const-wide/16 v2, 0x2

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    long-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/home/HomeLoader;->getCellXFromHotseatOrder(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iput v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    const-string v2, "_id"

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :goto_0
    return-void

    :cond_0
    const-string v2, "HomeLoader"

    const-string v3, "HomeLoader:Don\'t add Apps button in EasyMode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private arrangeItemToNewScreen(Ljava/util/ArrayList;J)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v7

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v8

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v7, v8}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Z

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-wide/from16 v0, p2

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCellWithOccupied([IIIII[[Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget v3, v4, v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    const/4 v3, 0x1

    aget v3, v4, v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v19

    iget v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v19

    iget v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v16, v0

    move-object/from16 v10, p0

    move v11, v7

    move v12, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/android/launcher3/home/HomeLoader;->fillOccupied(IIIIII[[Z)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v18
.end method

.method private bindFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "HomeLoader"

    const-string v3, "bindFestivalPageIfNecessary failed with no launcher"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$10;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/home/HomeLoader$10;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private bindWorkspaceScreens(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/home/HomeLoader$8;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/launcher3/home/HomeLoader$8;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private calculateDiffXY([IIILjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    move v1, p2

    move v2, p3

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v5, v6

    if-le v5, v1, :cond_0

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int v1, v5, v6

    :cond_0
    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v5, v6

    if-le v5, v2, :cond_1

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int v2, v5, v6

    :cond_1
    goto :goto_0

    :cond_2
    if-le v1, p2, :cond_4

    sub-int v3, v1, p2

    :goto_1
    aput v3, p1, v4

    const/4 v3, 0x1

    if-le v2, p3, :cond_3

    sub-int v4, v2, p3

    :cond_3
    aput v4, p1, v3

    return-void

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method private changeDialerAppOnLoadDefaultLayout()V
    .locals 18

    const-string v0, "HomeLoader"

    const-string v1, "changeDialerAppOnLoadDefaultLayout : OEM -> T phone app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/content/ComponentName;

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherFeature;->getOemDialerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOemDialerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v14

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v8

    const-string v3, "container=? AND intent=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, -0x65

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v16, "_id"

    aput-object v16, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "intent"

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    invoke-static {v12, v13}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v15, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "container=? AND intent=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    :goto_1
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v16, "_id"

    aput-object v16, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "intent"

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v15, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_3
    return-void

    :cond_0
    :try_start_2
    const-string v0, "HomeLoader"

    const-string v1, "Oem dialer is not exist in the hotseat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    const-string v0, "HomeLoader"

    const-string v1, "Oem dialer is not exist in the hotseat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getCustomerPageKey(Landroid/content/Context;)J

    move-result-wide v10

    const-string v3, "container=? AND intent=? AND screen=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    goto :goto_1

    :cond_3
    :try_start_3
    const-string v0, "HomeLoader"

    const-string v1, "Customer dialer is not exist in the workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    const-string v0, "HomeLoader"

    const-string v1, "Customer dialer is not exist in the workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private checkAppWidgetSingleInstanceList(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 6

    const/4 v5, 0x1

    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private checkItemPlacement([[Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/HashMap;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<+",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v11, v11, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v11}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v11, v11, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v11}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v5

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x65

    cmp-long v11, v12, v14

    if-nez v11, :cond_2

    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b003f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v14, v6

    cmp-long v11, v12, v14

    if-ltz v11, :cond_0

    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error loading shortcut "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " into hotseat position "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", position out of bounds: (0 to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v6, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v11, v12

    aget-object v11, p1, v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    if-eqz v11, :cond_1

    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error loading shortcut into hotseat "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " into position ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") occupied by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v13, v14

    aget-object v13, p1, v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v11, v12

    aget-object v11, p1, v11

    const/4 v12, 0x0

    aput-object p2, v11, v12

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v11, v12, v14

    if-nez v11, :cond_a

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ltz v11, :cond_3

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-ltz v11, :cond_3

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v11, v12

    if-gt v11, v4, :cond_3

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v11, v12

    if-le v11, v5, :cond_4

    :cond_3
    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error loading shortcut "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " into cell ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") out of screen bounds ( "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    :goto_1
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v11, v12

    if-ge v9, v11, :cond_7

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    :goto_2
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_6

    aget-object v11, p1, v9

    aget-object v11, v11, v10

    if-eqz v11, :cond_5

    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error loading shortcut "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " into cell ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") occupied by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, p1, v9

    aget-object v13, v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    :goto_3
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v11, v12

    if-ge v9, v11, :cond_9

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    :goto_4
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_8

    aget-object v11, p1, v9

    aput-object p2, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public static checkNeedToRefreshWidget([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Z
    .locals 5

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    iget-object v2, v0, Lcom/android/launcher3/util/ComponentKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    or-int/2addr p2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    monitor-exit v3

    return p2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private createFolderItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<*>;>;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<[[",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Lcom/android/launcher3/common/base/item/ItemInfo;"
        }
    .end annotation

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_1

    const/4 v7, 0x1

    :goto_0
    const/4 v9, 0x0

    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    sget-object v10, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v10, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    :cond_0
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    iput-wide v4, v3, Lcom/android/launcher3/folder/FolderInfo;->id:J

    int-to-long v10, v2

    iput-wide v10, v3, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, v3, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    const/4 v10, 0x1

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->spanX:I

    const/4 v10, 0x1

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->spanY:I

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->optionsIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->options:I

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->colorIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->color:I

    iget-wide v10, v3, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x65

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    const-wide/16 v10, 0x1

    :goto_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p3

    invoke-direct {p0, v10, v3, v0}, Lcom/android/launcher3/home/HomeLoader;->checkItemPlacement([[Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/HashMap;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    :goto_2
    return-object v10

    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    :cond_2
    const-wide/16 v10, 0x0

    goto :goto_1

    :cond_3
    packed-switch v2, :pswitch_data_0

    :goto_3
    if-eqz v7, :cond_4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object v10, v9

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object v9, v3

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch -0x65
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createItems(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/util/LongArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<*>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<[[",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0, p6}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    :try_start_0
    iget v5, p2, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v3, 0x0

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    if-eqz v3, :cond_0

    iget v5, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v5, :cond_0

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "HomeLoader"

    const-string v6, "Desktop items loading interrupted"

    const/4 v7, 0x1

    invoke-static {v5, v6, v0, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/launcher3/home/HomeLoader;->createShortcutItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/launcher3/home/HomeLoader;->createFolderItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    new-instance v2, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v2}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    move-object v1, v2

    :cond_2
    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v1, v6, v7, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/launcher3/home/HomeLoader;->createWidgetItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    :cond_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private createWidgetItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<*>;>;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<[[",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Lcom/android/launcher3/common/base/item/ItemInfo;"
        }
    .end annotation

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v29, 0x5

    move/from16 v0, v29

    if-ne v14, v0, :cond_0

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->appWidgetIdIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->profileIdIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->appWidgetProviderIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader;->mAllUsers:Landroid/util/LongSparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v25, :cond_1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x0

    :goto_1
    return-object v20

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    and-int/lit8 v29, v19, 0x1

    if-nez v29, :cond_2

    const/4 v12, 0x1

    :goto_2
    and-int/lit8 v29, v19, 0x2

    if-nez v29, :cond_3

    const/16 v27, 0x1

    :goto_3
    sget-object v29, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v28

    if-lez v4, :cond_4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v17

    :goto_4
    invoke-static/range {v17 .. v17}, Lcom/android/launcher3/LauncherModel;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v13

    sget-boolean v29, Lcom/android/launcher3/home/HomeLoader;->sIsSafeMode:Z

    if-nez v29, :cond_5

    if-nez v8, :cond_5

    if-eqz v27, :cond_5

    if-nez v13, :cond_5

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " appWidgetId="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v29, "HomeLoader"

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v29, "HomeLoader"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x0

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    const/16 v27, 0x0

    goto :goto_3

    :cond_4
    sget-object v29, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/HomeLoader;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v17

    goto :goto_4

    :cond_5
    if-eqz v13, :cond_8

    new-instance v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v5, v4, v0}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    and-int/lit8 v24, v19, -0x9

    if-nez v27, :cond_6

    if-eqz v12, :cond_7

    const/16 v24, 0x4

    :cond_6
    :goto_5
    move/from16 v0, v24

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    :goto_6
    iput-wide v10, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->id:J

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellX:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellY:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->spanXIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->spanYIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    move-object/from16 v0, v25

    iput-object v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/16 v29, -0x64

    move/from16 v0, v29

    if-eq v7, v0, :cond_e

    const/16 v29, -0x65

    move/from16 v0, v29

    if-eq v7, v0, :cond_e

    const-string v29, "HomeLoader"

    const-string v30, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_7
    and-int/lit8 v24, v24, -0x3

    goto/16 :goto_5

    :cond_8
    const-string v29, "HomeLoader"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Widget restore pending id="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " appWidgetId="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " status ="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-direct {v5, v4, v6}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    move/from16 v0, v19

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    sget-object v29, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-nez v29, :cond_a

    const/4 v9, 0x0

    :goto_7
    and-int/lit8 v29, v19, 0x8

    if-eqz v29, :cond_b

    :cond_9
    :goto_8
    if-nez v9, :cond_d

    const/16 v29, 0x0

    :goto_9
    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->installProgress:I

    goto/16 :goto_6

    :cond_a
    sget-object v29, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    move-object/from16 v9, v29

    goto :goto_7

    :cond_b
    if-eqz v9, :cond_c

    iget v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x8

    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    goto :goto_8

    :cond_c
    sget-boolean v29, Lcom/android/launcher3/home/HomeLoader;->sIsSafeMode:Z

    if-nez v29, :cond_9

    const-string v29, "HomeLoader"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unrestored widget removed: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v29

    goto :goto_9

    :cond_e
    int-to-long v0, v7

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->container:J

    const-wide/16 v30, 0x0

    move-object/from16 v0, p4

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v5, v2}, Lcom/android/launcher3/home/HomeLoader;->checkItemPlacement([[Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/HashMap;)Z

    move-result v29

    if-nez v29, :cond_f

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_f
    if-nez v8, :cond_11

    iget-object v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    iget v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    :cond_10
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    const-string v29, "appWidgetProvider"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v29, "restored"

    iget v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v10, v11, v1}, Lcom/android/launcher3/home/HomeLoader;->updateItem(JLandroid/content/ContentValues;)V

    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/HomeLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object/from16 v20, v5

    goto/16 :goto_1
.end method

.method private doHandlingItems(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<*>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    const-string v10, "_id"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v10, v9}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v8, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v9, "HomeLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doHandlingItems Removed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v9}, Lcom/android/launcher3/common/model/FavoritesProvider;->deleteEmptyFolders()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/HomeLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    :cond_0
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "_id"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v10, v9}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "restored"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v7, v8, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v9, "HomeLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doHandlingItems restored = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v9, v9, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v9, v9, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput v0, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v1, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const-string v10, "HomeLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doHandlingItems overlap = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_3

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/launcher3/home/HomeLoader;->handleOutsideItems(Ljava/util/ArrayList;)V

    const-string v10, "HomeLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doHandlingItems extra = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private fillOccupied(IIIIII[[Z)V
    .locals 4

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    add-int v2, p3, p5

    if-gt v2, p1, :cond_0

    add-int v2, p4, p6

    if-le v2, p2, :cond_1

    :cond_0
    return-void

    :cond_1
    move v0, p3

    :goto_0
    add-int v2, p3, p5

    if-ge v0, v2, :cond_0

    if-ge v0, p1, :cond_0

    move v1, p4

    :goto_1
    add-int v2, p4, p6

    if-ge v1, v2, :cond_2

    if-ge v1, p2, :cond_2

    aget-object v2, p7, v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findSpaceForItem(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)Landroid/util/Pair;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;IIZ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    new-instance v18, Landroid/util/LongSparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/LongSparseArray;-><init>()V

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v20, -0x64

    cmp-long v7, v8, v20

    if-nez v7, :cond_0

    iget v7, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v7, :cond_0

    iget-wide v8, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-nez v14, :cond_1

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-wide v8, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    new-array v6, v2, [I

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;)I

    move-result v10

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-eqz p5, :cond_7

    add-int/lit8 v12, v17, -0x1

    :goto_1
    const/4 v2, -0x1

    if-le v12, v2, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    :cond_3
    :goto_2
    const/4 v11, 0x0

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;J[IIIZ)Z

    move-result v11

    if-nez v11, :cond_5

    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v10

    if-eqz p5, :cond_4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v16, v2, 0x1

    :cond_4
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;J[IIIZ)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v11, 0x1

    :cond_5
    if-nez v11, :cond_b

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;J[IIIZ)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t find space to add the item"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v10, v10, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v10, v2, :cond_8

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_8
    if-gez v10, :cond_9

    const-string v2, "HomeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findSpaceForItem - index erorr : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_b
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private getAllItemInHome()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    const-wide/16 v10, -0x64

    const-wide/16 v8, -0x65

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1

    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    :cond_1
    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_4

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method private getAppShortcutInfo(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;ZZ)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 9

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const-string v0, "HomeLoader"

    const-string v4, "Null user found in getShortcutInfo"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "HomeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing component found in getShortcutInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v8, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v0, v8, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v3

    if-nez v3, :cond_3

    if-nez p5, :cond_3

    const-string v0, "HomeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing activity found in getShortcutInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object v4, p2

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;ZZ)V

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Lcom/android/launcher3/common/model/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    iget v0, p4, Lcom/android/launcher3/common/model/CursorInfo;->iconIndex:I

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {p3, v0, v4}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_4

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_4
    invoke-virtual {v1, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    iput v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    :cond_6
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p3, :cond_7

    iget v0, p4, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    :cond_7
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    :cond_8
    iput v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    iput-object p2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v0

    iput v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    goto/16 :goto_0
.end method

.method private getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCellXFromHotseatOrder(I)I
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private getCellYFromHotseatOrder(I)I
    .locals 2

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDefaultLayoutParser()Lcom/android/launcher3/home/HomeDefaultLayoutParser;
    .locals 6

    new-instance v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method public static getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .locals 3

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/home/HomeLoader;->getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v2, p1, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/ComponentName;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 8

    const/4 v7, 0x1

    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    iput-object p4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.launcher.action.SHOW_APPS_VIEW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonEnabled(Z)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget v4, p3, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {p3, p2, v1, v4}, Lcom/android/launcher3/common/model/CursorInfo;->loadIcon(Landroid/database/Cursor;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " shortcut\'s icon is null. use default icon"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-boolean v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->usingFallbackIcon:Z

    :cond_2
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v4, v0, p5}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-boolean v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    :cond_3
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v4}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    if-nez v4, :cond_4

    iput-boolean v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    :cond_4
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v5, v5, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v5

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v6}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-static {v4, v0, v5, v6}, Lcom/android/launcher3/util/DualAppUtils;->makeUserBadgedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    if-eqz p5, :cond_0

    iput-object p5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v4, v3, p4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v4

    iput v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    goto/16 :goto_0
.end method

.method public static getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {p0, v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    new-instance v10, Lcom/android/launcher3/util/ComponentKey;

    iget-object v11, v1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v10, v11, v5}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v4, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v8, v8, Landroid/os/TransactionTooLargeException;

    if-eqz v8, :cond_4

    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_3
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    return-object v3

    :cond_2
    :try_start_4
    sput-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    :cond_3
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v8

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v8

    :cond_4
    throw v0
.end method

.method private getWidgetsInHome()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    return-object v1
.end method

.method private handleOutsideItems(Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    :cond_0
    const-string v18, "HomeLoader"

    const-string v19, "pageItems is null or empty"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x64

    cmp-long v19, v20, v22

    if-nez v19, :cond_3

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/home/HomeLoader;->reArrangeByGrid(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/home/HomeLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x65

    cmp-long v19, v20, v22

    if-eqz v19, :cond_6

    iget-wide v8, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v8, v9}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v16

    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string v19, "cellX"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v19, "cellY"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v19, "spanX"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v19, "spanY"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    :try_start_0
    sget-object v18, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v19, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    const/4 v13, 0x1

    move v14, v13

    :goto_4
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1

    move-object v4, v12

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader;->mNewPageIdsAfterGridChanged:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    new-instance v21, Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2, v14}, Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;-><init>(JI)V

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v11}, Lcom/android/launcher3/home/HomeLoader;->arrangeItemToNewScreen(Ljava/util/ArrayList;J)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader;->mExtraItemsAfterGridChanged:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v14, v13

    goto :goto_4

    :catch_0
    move-exception v5

    const-string v18, "HomeLoader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "occurred RemoteException during handleOutsideItems - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v5

    const-string v18, "HomeLoader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "occurred OperationApplicationException during handleOutsideItems - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private initFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "HomeLoader"

    const-string v3, "initFestivalPageIfNecessary failed with no launcher"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/home/HomeLoader$9;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private isAllAppItemInApps(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 10

    const-wide/16 v8, -0x66

    const/4 v2, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v4, :cond_3

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit v3

    goto :goto_0

    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeSingleInstanceAppWidgetList()Z
    .locals 10

    const/4 v5, 0x0

    sget-object v6, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    sget-object v6, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "HomeLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This widget is single instance - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/util/LongSparseArray;

    invoke-direct {v9}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v6, "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE_PACKAGE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    sget-object v7, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "HomeLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This widget is single instance - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v9, Landroid/util/LongSparseArray;

    invoke-direct {v9}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    const/4 v5, 0x1

    :cond_5
    return v5
.end method

.method private reArrangeByGrid(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 33
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

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v3

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Z

    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ltz v6, :cond_1

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-gez v6, :cond_0

    :cond_1
    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v24

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/launcher3/home/HomeLoader;->calculateDiffXY([IIILjava/util/ArrayList;)V

    const/4 v3, 0x0

    aget v3, v22, v3

    if-lez v3, :cond_9

    const/4 v3, 0x0

    aget v3, v22, v3

    add-int/lit8 v20, v3, -0x1

    :goto_1
    const/4 v3, 0x1

    aget v3, v22, v3

    if-lez v3, :cond_a

    const/4 v3, 0x1

    aget v3, v22, v3

    add-int/lit8 v21, v3, -0x1

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v4, v5, v1, v2}, Lcom/android/launcher3/util/ScreenGridUtilities;->getOutSidePosition(Ljava/util/List;IIII)I

    move-result v28

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v23, v3, -0x1

    :goto_3
    const/4 v3, -0x1

    move/from16 v0, v23

    if-le v0, v3, :cond_17

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v25, :cond_16

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v30, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v31, v0

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-le v3, v4, :cond_4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    const/4 v3, 0x1

    move/from16 v0, v28

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_4

    :cond_3
    const/4 v3, 0x0

    aget v3, v22, v3

    add-int v30, v30, v3

    :cond_4
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-le v3, v5, :cond_6

    move-object/from16 v0, v25

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v3, 0x2

    move/from16 v0, v28

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_6

    :cond_5
    const/4 v3, 0x1

    aget v3, v22, v3

    add-int v31, v31, v3

    :cond_6
    move-object/from16 v0, v25

    iget v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v16, v0

    if-nez v28, :cond_b

    add-int v3, v30, v15

    if-gt v3, v4, :cond_7

    add-int v3, v31, v16

    if-le v3, v5, :cond_e

    :cond_7
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v23, v23, -0x1

    goto :goto_3

    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_2

    :cond_b
    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_10

    move/from16 v0, v30

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    add-int v3, v31, v16

    if-le v3, v5, :cond_d

    :cond_c
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    const/4 v3, 0x0

    aget v3, v22, v3

    sub-int v30, v30, v3

    :cond_e
    :goto_5
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, v30

    if-ne v3, v0, :cond_f

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v0, v31

    if-eq v3, v0, :cond_8

    :cond_f
    move/from16 v0, v30

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, v31

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    goto :goto_4

    :cond_10
    const/4 v3, 0x2

    move/from16 v0, v28

    if-ne v0, v3, :cond_13

    add-int v3, v30, v15

    if-gt v3, v4, :cond_11

    move/from16 v0, v31

    move/from16 v1, v21

    if-gt v0, v1, :cond_12

    :cond_11
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_12
    const/4 v3, 0x1

    aget v3, v22, v3

    sub-int v31, v31, v3

    goto :goto_5

    :cond_13
    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_e

    move/from16 v0, v30

    move/from16 v1, v20

    if-le v0, v1, :cond_14

    move/from16 v0, v31

    move/from16 v1, v21

    if-gt v0, v1, :cond_15

    :cond_14
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_15
    const/4 v3, 0x0

    aget v3, v22, v3

    sub-int v30, v30, v3

    const/4 v3, 0x1

    aget v3, v22, v3

    sub-int v31, v31, v3

    goto :goto_5

    :cond_16
    const-string v3, "HomeLoader"

    const-string v6, "HomeLoader: changeGrid() item is Null"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_17
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_18
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v25

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v25

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher3/home/HomeLoader;->fillOccupied(IIIIII[[Z)V

    goto :goto_6

    :cond_19
    const-string v3, "HomeLoader"

    const-string v6, "reArrangeByGrid occupied: "

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x0

    :goto_7
    move/from16 v0, v31

    if-ge v0, v5, :cond_1d

    const-string v26, ""

    const/16 v30, 0x0

    :goto_8
    move/from16 v0, v30

    if-ge v0, v4, :cond_1c

    array-length v3, v10

    move/from16 v0, v30

    if-ge v0, v3, :cond_1b

    aget-object v3, v10, v30

    array-length v3, v3

    move/from16 v0, v31

    if-ge v0, v3, :cond_1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v3, v10, v30

    aget-boolean v3, v3, v31

    if-eqz v3, :cond_1a

    const-string v3, "#"

    :goto_9
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    :goto_a
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    :cond_1a
    const-string v3, "."

    goto :goto_9

    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_a

    :cond_1c
    const-string v3, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v31, v31, 0x1

    goto :goto_7

    :cond_1d
    invoke-static/range {v27 .. v28}, Lcom/android/launcher3/util/ScreenGridUtilities;->getOutSideItems(Ljava/util/List;I)Ljava/util/List;

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_1e
    :goto_b
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v3, 0x2

    new-array v12, v3, [I

    move-object/from16 v0, v25

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v25

    iget v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-lez v3, :cond_21

    move-object/from16 v0, v25

    iget v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    :goto_c
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-lez v3, :cond_22

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v16, v0

    :goto_d
    add-int/lit8 v3, v4, -0x1

    if-le v13, v3, :cond_1f

    const/4 v3, 0x0

    aget v3, v22, v3

    sub-int/2addr v13, v3

    :cond_1f
    add-int/lit8 v3, v5, -0x1

    if-le v14, v3, :cond_20

    const/4 v3, 0x1

    aget v3, v22, v3

    sub-int/2addr v14, v3

    :cond_20
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNearVacantCell([IIIIIII[[Z)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "outside item - find new cell "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v12, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v12, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/common/base/item/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    aget v3, v12, v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    const/4 v3, 0x1

    aget v3, v12, v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v25

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v3, p0

    move v8, v15

    move/from16 v9, v16

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher3/home/HomeLoader;->fillOccupied(IIIIII[[Z)V

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_21
    const/4 v15, 0x1

    goto/16 :goto_c

    :cond_22
    const/16 v16, 0x1

    goto/16 :goto_d

    :cond_23
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_24
    return-object v27
.end method

.method private reArrangeHotseatData(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v10, v4

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    int-to-long v8, v4

    iput-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const-string v7, "screen"

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v7, v8

    invoke-direct {p0, v7}, Lcom/android/launcher3/home/HomeLoader;->getCellXFromHotseatOrder(I)I

    move-result v0

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v7, v8

    invoke-direct {p0, v7}, Lcom/android/launcher3/home/HomeLoader;->getCellYFromHotseatOrder(I)I

    move-result v1

    iget v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ne v7, v0, :cond_3

    iget v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-eq v7, v1, :cond_4

    :cond_3
    iput v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v1, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const-string v7, "cellX"

    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "cellY"

    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v7, v5, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private restoreStkPositionIfNecessary(Ljava/util/ArrayList;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/16 v18, 0x0

    sget-object v22, Lcom/android/launcher3/home/HomeLoader;->STK_PKG_LIST:[Ljava/lang/String;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/4 v2, 0x0

    move/from16 v21, v2

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget-object v20, v22, v21

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v12, -0x64

    move-object/from16 v0, v16

    iput-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const/4 v9, -0x1

    move-object/from16 v0, v16

    iput v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    const/4 v10, -0x1

    move-object/from16 v0, v16

    iput v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-nez v18, :cond_3

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, ";"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v2, v11

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    const/4 v2, 0x2

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v2, 0x3

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_7

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v15, 0x0

    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v14, Lcom/android/launcher3/folder/FolderInfo;->id:J

    cmp-long v6, v6, v12

    if-nez v6, :cond_4

    move-object v15, v14

    goto :goto_2

    :cond_5
    if-eqz v15, :cond_6

    move-object/from16 v0, v16

    iput-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v16

    iput v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v16

    iput v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    :cond_6
    monitor-exit v3

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_7
    const-wide/16 v2, -0x65

    cmp-long v2, v12, v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v2, v0

    cmp-long v2, v4, v2

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-eq v2, v0, :cond_2

    move-object/from16 v0, v16

    iput-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v16

    iput v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v16

    iput v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    goto/16 :goto_1

    :cond_8
    const-wide/16 v2, -0x64

    cmp-long v2, v12, v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v6, 0x0

    aput v9, v3, v6

    const/4 v6, 0x1

    aput v10, v3, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJIIZ)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v16

    iput v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v16

    iput v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v2, v21, 0x1

    move/from16 v21, v2

    goto/16 :goto_0
.end method

.method private runAllBindCompleteRunnables()V
    .locals 4

    const-string v1, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runAllBindCompleteRunnables, count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-void
.end method

.method private saveCustomerPageKey()V
    .locals 14

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v13, 0x0

    new-instance v7, Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v8

    const-string v3, "container=? AND intent=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/16 v0, -0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v13

    invoke-virtual {v8, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v12, "screen"

    aput-object v12, v2, v13

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "customerPagePref"

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "HomeLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save customer page key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string v0, "HomeLoader"

    const-string v1, "customer dialer is not exist in the workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    const-string v0, "HomeLoader"

    const-string v1, "customer dialer is not exist in the workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private shortcutExists(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 11

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v10, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-nez v10, :cond_5

    iget-object v7, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    :goto_1
    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    iget-object v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p2, v10}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v7, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_1
    const-string v8, "HomeLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shortcutExists : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    :cond_2
    return v8

    :cond_3
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    iget-object v7, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method private tryGetCallbacks(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-eq v0, p1, :cond_2

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const-string v3, "HomeLoader"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateAndBindItems(Ljava/util/ArrayList;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    const-wide/16 v6, -0x64

    iput-wide v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x1

    iput-wide v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v5, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HomeLoader;->findSpaceForItem(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)Landroid/util/Pair;

    move-result-object v12

    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v11, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, [I

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const/4 v2, 0x0

    aget v2, v11, v2

    iput v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    const/4 v2, 0x1

    aget v2, v11, v2

    iput v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-eqz p2, :cond_0

    const/4 v13, 0x4

    :goto_1
    invoke-virtual {v14, v13}, Lcom/android/launcher3/common/base/item/ItemInfo;->setUnHidden(I)I

    move-result v2

    iput v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "container"

    iget-wide v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "cellX"

    iget v5, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cellY"

    iget v5, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "screen"

    iget-wide v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "hidden"

    iget v5, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    const/4 v13, 0x2

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v10, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v8

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v5, Lcom/android/launcher3/home/HomeLoader$24;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v8, v4, v1}, Lcom/android/launcher3/home/HomeLoader$24;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateHideItems(Ljava/util/ArrayList;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v8, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v8, :cond_1

    move-object v2, v11

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_2

    const/4 v10, 0x4

    :goto_1
    invoke-virtual {v11, v10}, Lcom/android/launcher3/common/base/item/ItemInfo;->setHidden(I)I

    move-result v2

    iput v2, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "hidden"

    iget v15, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "screen"

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x64

    cmp-long v2, v16, v18

    if-eqz v2, :cond_3

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x65

    cmp-long v2, v16, v18

    if-eqz v2, :cond_3

    sget-object v15, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v16, -0x64

    move-wide/from16 v0, v16

    iput-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-string v2, "container"

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_2
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const/4 v10, 0x2

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/home/HomeLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v15, 0x1

    invoke-static {v8, v2, v15}, Lcom/android/launcher3/home/HomeLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher3/home/HomeLoader;->isAllAppItemInApps(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v15, v12}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v9, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v4

    sget-object v15, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v2, Lcom/android/launcher3/home/HomeLoader$25;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HomeLoader$25;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v15, v2}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v5

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$17;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeLoader$17;-><init>(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;ZLandroid/content/Context;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public addAndBindAppsButton(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/home/HomeLoader$15;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/launcher3/home/HomeLoader$15;-><init>(Lcom/android/launcher3/home/HomeLoader;Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addOrUpdater([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v16

    instance-of v7, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_e

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v14, v0

    const/16 v17, 0x0

    const/4 v15, 0x0

    iget-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v7, :cond_1

    iget-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v7, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v7, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v7, v0, v1}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual {v14, v13}, Lcom/android/launcher3/common/base/item/IconInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    iget-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v7, v13, v0}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v7, 0x1

    iput-boolean v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    invoke-virtual {v14, v13}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    iput-boolean v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->usingFallbackIcon:Z

    const/16 v17, 0x1

    :cond_1
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-static {v11, v12, v0}, Lcom/android/launcher3/home/HomeLoader;->findActivityInfo(Ljava/util/List;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v8

    const/16 v7, 0x26

    invoke-virtual {v14, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    new-instance v7, Landroid/content/Intent;

    const-string v25, "android.intent.action.MAIN"

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    const-string v25, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v25, 0x10000

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v19

    if-nez v19, :cond_3

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    if-nez v18, :cond_2

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    :cond_3
    const/4 v7, 0x4

    invoke-virtual {v14, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v7, v0, :cond_5

    iget-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-static {v7}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "HomeLoader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "addOrUpdater : this shortcut(restored) is app shortcut. so remove "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string v7, "HomeLoader"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "addOrUpdater : this shortcut(restored) is app shortcut. change item type "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iput v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    :cond_5
    if-eqz v8, :cond_6

    invoke-static {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v7

    iput v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    :cond_6
    iget-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    iput-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    iput-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    iput v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v7, :cond_7

    const/4 v7, 0x0

    iput-boolean v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    :cond_7
    const/16 v17, 0x1

    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v14, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    :cond_8
    :goto_1
    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_d

    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v7, v7, -0x3

    iput v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    const/4 v15, 0x1

    :cond_9
    :goto_2
    if-nez v17, :cond_a

    if-eqz v15, :cond_b

    :cond_a
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v17, :cond_0

    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v14, v7, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0, v14}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_0

    :cond_c
    if-eqz v10, :cond_8

    const-string v7, "android.intent.action.MAIN"

    iget-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v7, :cond_8

    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v14, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    iget-object v7, v10, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    const/16 v17, 0x1

    goto :goto_1

    :cond_d
    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_9

    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    const/4 v15, 0x1

    goto :goto_2

    :cond_e
    move-object/from16 v0, v16

    instance-of v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v7, :cond_0

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object/from16 v0, v23

    iget v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v7, v7, -0xb

    move-object/from16 v0, v23

    iput v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    move-object/from16 v0, v23

    iget v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v7, v7, 0x4

    move-object/from16 v0, v23

    iput v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_0

    :cond_f
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v4

    if-nez v4, :cond_11

    const-string v2, "HomeLoader"

    const-string v3, "addOrUpdater. Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_3
    return-void

    :cond_11
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz p2, :cond_12

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->restoreStkPositionIfNecessary(Ljava/util/ArrayList;)V

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    :cond_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    :cond_13
    sget-object v25, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v2, Lcom/android/launcher3/home/HomeLoader$22;

    move-object/from16 v3, p0

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HomeLoader$22;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    :cond_14
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v3, Lcom/android/launcher3/home/HomeLoader$23;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v3, v0, v4, v1}, Lcom/android/launcher3/home/HomeLoader$23;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    goto :goto_0

    :cond_2
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    goto :goto_0

    :cond_4
    const-string v0, "HomeLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPagesItem : input item container error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method bindItemAfterChangePosition(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/home/HomeLoader$16;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeLoader$16;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method bindItems(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->getCurrentWorkspaceScreen()I

    move-result v3

    :cond_0
    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :cond_1
    if-gez v3, :cond_2

    const-string v8, "HomeLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindItems currentScreenIndex : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mBgOrderedScreens.size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v10, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v9, v10, v4

    if-nez v9, :cond_3

    instance-of v9, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v9, :cond_3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v8, v7, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_5

    move-object v8, v7

    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    sget-object v10, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v8, v10}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    :cond_5
    new-instance v8, Lcom/android/launcher3/home/HomeLoader$18;

    invoke-direct {v8, p0, v2, v7}, Lcom/android/launcher3/home/HomeLoader$18;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v8}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v8, v7, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_7

    move-object v8, v7

    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    sget-object v10, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v8, v10}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    :cond_7
    new-instance v8, Lcom/android/launcher3/home/HomeLoader$19;

    invoke-direct {v8, p0, v2, v7}, Lcom/android/launcher3/home/HomeLoader$19;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v8}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method public bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v14, "HomeLoader"

    const-string v15, "bindItemsSync running with no launcher"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->initFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v15, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v14, -0x3e9

    move/from16 v0, p1

    if-eq v0, v14, :cond_3

    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_4

    move/from16 v2, p1

    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v2, v14, :cond_2

    const/16 v2, -0x3e9

    :cond_2
    move v3, v2

    if-gez v3, :cond_5

    const-wide/16 v4, -0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->unbindItemsOnMainThread()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget-object v15, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v14, v12, v4

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    :catchall_1
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v14

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {v8}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->getCurrentWorkspaceScreen()I

    move-result v2

    goto :goto_2

    :cond_5
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_3

    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_7
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v11, Lcom/android/launcher3/home/HomeLoader$27;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v8, v1}, Lcom/android/launcher3/home/HomeLoader$27;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v9, v1}, Lcom/android/launcher3/home/HomeLoader;->bindWorkspaceScreens(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/launcher3/home/HomeLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v6, v14, v1}, Lcom/android/launcher3/home/HomeLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    new-instance v11, Lcom/android/launcher3/home/HomeLoader$28;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v8, v1, v3}, Lcom/android/launcher3/home/HomeLoader$28;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->clearDeferredBindRunnable()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v14, v1}, Lcom/android/launcher3/home/HomeLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v14

    if-eqz v14, :cond_8

    new-instance v11, Lcom/android/launcher3/home/HomeLoader$29;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v1}, Lcom/android/launcher3/home/HomeLoader$29;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/home/HomeLoader;->addDeferredBindRunnable(Ljava/lang/Runnable;)V

    :cond_8
    new-instance v11, Lcom/android/launcher3/home/HomeLoader$30;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v8, v1}, Lcom/android/launcher3/home/HomeLoader$30;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/home/HomeLoader;->addDeferredBindRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 22
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

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HomeLoader"

    const-string v5, "bindPageItems task is stopped"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v3, "HomeLoader"

    const-string v5, "bindPageItems running with no launcher"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->initFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/home/HomeLoader;->mIsFirstBind:Z

    if-eqz v3, :cond_4

    new-instance v2, Lcom/android/launcher3/home/HomeLoader$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v4, v1}, Lcom/android/launcher3/home/HomeLoader$2;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v14, v1}, Lcom/android/launcher3/home/HomeLoader;->bindWorkspaceScreens(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/home/HomeLoader;->mIsFirstBind:Z

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const-string v3, "HomeLoader"

    const-string v5, "bindPageItems page item is null or empty!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v10}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v3, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :goto_2
    :pswitch_1
    iget-wide v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x65

    cmp-long v3, v18, v20

    if-nez v3, :cond_7

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    iget-wide v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v18, v0

    move-object v3, v13

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    new-instance v2, Lcom/android/launcher3/home/HomeLoader$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v4, v1, v11}, Lcom/android/launcher3/home/HomeLoader$3;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Ljava/util/ArrayList;)V

    if-eqz p2, :cond_a

    monitor-enter p2

    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_9
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v9, :cond_d

    move v7, v12

    add-int/lit8 v3, v12, 0x6

    if-gt v3, v9, :cond_b

    const/4 v8, 0x6

    :goto_5
    new-instance v2, Lcom/android/launcher3/home/HomeLoader$4;

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/home/HomeLoader$4;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Ljava/util/ArrayList;II)V

    if-eqz p2, :cond_c

    monitor-enter p2

    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_6
    add-int/lit8 v12, v12, 0x6

    goto :goto_4

    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_b
    sub-int v8, v9, v12

    goto :goto_5

    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_d
    invoke-virtual {v10}, Lcom/android/launcher3/util/LongArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v2, Lcom/android/launcher3/home/HomeLoader$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v4, v1, v10}, Lcom/android/launcher3/home/HomeLoader$5;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Lcom/android/launcher3/util/LongArrayMap;)V

    if-eqz p2, :cond_f

    monitor-enter p2

    :try_start_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_e
    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v9, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    new-instance v2, Lcom/android/launcher3/home/HomeLoader$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v4, v1, v15}, Lcom/android/launcher3/home/HomeLoader$6;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    if-eqz p2, :cond_10

    monitor-enter p2

    :try_start_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3

    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_7

    :catchall_4
    move-exception v3

    :try_start_9
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v3

    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method bindRemainingSynchronousPages()V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/Runnable;

    move-object v1, v0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_0
    return-void
.end method

.method checkDuplicatedSingleInstanceWidgetExist(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getWidgetsInHome()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v3, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method clearPreservedPosition()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/home/HomeLoader$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HomeLoader$1;-><init>(Lcom/android/launcher3/home/HomeLoader;)V

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected clearSBgDataStructures()V
    .locals 2

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mNewPageIdsAfterGridChanged:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mExtraItemsAfterGridChanged:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public containPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createLoaderTask(Z)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeLoader;->setLoaderTaskStop(Z)V

    const-string v0, "HomeLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createLoaderTask isStopped : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;-><init>(Lcom/android/launcher3/home/HomeLoader;Z)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    return-void
.end method

.method createShortcutItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<*>;>;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<[[",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Lcom/android/launcher3/common/base/item/ItemInfo;"
        }
    .end annotation

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->profileIdIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeLoader;->mAllUsers:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    if-eqz v32, :cond_0

    const/16 v33, 0x1

    :goto_0
    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/ArrayList;

    if-nez v17, :cond_1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v35, 0x0

    move/from16 v11, v19

    :goto_1
    return-object v35

    :cond_0
    const/16 v33, 0x0

    goto :goto_0

    :cond_1
    const/16 v35, 0x0

    if-nez v29, :cond_6

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, v28

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    move-object/from16 v27, v7

    :goto_2
    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    if-eqz v18, :cond_17

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v39

    if-eqz v39, :cond_7

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v38, 0x1

    :goto_3
    if-eqz v38, :cond_a

    if-eqz v33, :cond_3

    and-int/lit8 v4, v32, 0x20

    if-eqz v4, :cond_8

    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "title"

    const-string v5, ""

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "icon"

    const/4 v4, 0x0

    check-cast v4, [B

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->updateItem(JLandroid/content/ContentValues;)V

    :cond_2
    :goto_4
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_24

    const/16 v21, 0x8

    move/from16 v11, v19

    move-object/from16 v7, v27

    :goto_5
    if-ltz v20, :cond_18

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x9

    if-lt v4, v5, :cond_18

    const/4 v12, 0x1

    :goto_6
    if-eqz v33, :cond_1a

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "constructing info for restored package promiseType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v18

    move/from16 v8, v32

    move-object/from16 v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/home/HomeLoader;->getRestoredItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;ILcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v26

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher3/home/HomeLoader;->getRestoredItemIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v7

    :goto_7
    if-eqz v26, :cond_23

    move-wide/from16 v0, v24

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    move-object/from16 v0, v26

    iput-object v7, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move/from16 v0, v20

    int-to-long v4, v0

    move-object/from16 v0, v26

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v26

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->spanX:I

    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->spanY:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const-string v5, "profile"

    move-wide/from16 v0, v36

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v4, :cond_4

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    const-string v5, "profile"

    move-wide/from16 v0, v36

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_4
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int v4, v4, v21

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    sget-boolean v4, Lcom/android/launcher3/home/HomeLoader;->sIsSafeMode:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    :cond_5
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    if-nez v4, :cond_1d

    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v4, v4, v8

    if-nez v4, :cond_1c

    const-wide/16 v4, 0x1

    :goto_8
    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher3/home/HomeLoader;->checkItemPlacement([[Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/HashMap;)Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v35, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v4, 0x4

    :try_start_1
    move-object/from16 v0, v28

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    move-object/from16 v27, v7

    goto/16 :goto_2

    :cond_7
    const/16 v38, 0x0

    goto/16 :goto_3

    :cond_8
    and-int/lit8 v4, v32, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_2

    invoke-static/range {v27 .. v27}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createShortcutItem : this shortcut(restored) is app shortcut. so remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v35, 0x0

    move/from16 v11, v19

    goto/16 :goto_1

    :cond_9
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createShortcutItem : this shortcut(restored) is app shortcut. change item type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "itemType"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->updateItem(JLandroid/content/ContentValues;)V

    const/16 v29, 0x0

    goto/16 :goto_4

    :cond_a
    if-eqz v39, :cond_10

    const/16 v40, 0x0

    and-int/lit8 v4, v32, 0x2

    if-nez v4, :cond_b

    and-int/lit8 v4, v32, 0x20

    if-eqz v4, :cond_c

    :cond_b
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v40

    if-eqz v40, :cond_c

    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "intent"

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->updateItem(JLandroid/content/ContentValues;)V

    :cond_c
    if-nez v40, :cond_e

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v20

    int-to-long v6, v0

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v8, v4

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/home/HomeLoader;->backupStkPositionIfNecessary(Ljava/lang/String;JJII)V

    and-int/lit8 v4, v32, 0x20

    if-eqz v4, :cond_d

    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package not yet restored (validPkg): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v7, v27

    :goto_9
    move/from16 v11, v19

    goto/16 :goto_5

    :cond_d
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid intent removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v35, 0x0

    move/from16 v11, v19

    goto/16 :goto_1

    :cond_e
    move-object/from16 v7, v40

    and-int/lit8 v4, v32, 0x20

    if-eqz v4, :cond_f

    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "title"

    const-string v5, ""

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "icon"

    const/4 v4, 0x0

    check-cast v4, [B

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->updateItem(JLandroid/content/ContentValues;)V

    :cond_f
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    goto :goto_9

    :cond_10
    if-eqz v33, :cond_13

    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package not yet restored: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    and-int/lit8 v4, v32, 0x2

    if-nez v4, :cond_11

    and-int/lit8 v4, v32, 0x1

    if-eqz v4, :cond_24

    :cond_11
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-eqz v4, :cond_12

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    :cond_12
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnRestored package removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v35, 0x0

    move/from16 v11, v19

    goto/16 :goto_1

    :cond_13
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2000

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/home/HomeLoader;->isNotAvailableApps(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v11, 0x1

    const/16 v21, 0x2

    move-object/from16 v7, v27

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/home/HomeLoader;->mIsSdCardReady:Z

    if-nez v4, :cond_15

    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (check again later)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/home/HomeLoader;->addAppToPendingPackages(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    const/4 v11, 0x1

    move-object/from16 v7, v27

    goto/16 :goto_5

    :cond_15
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_16

    const-string v4, "com.samsung.android.da.daagent"

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dual app shortcut : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v11, v19

    move-object/from16 v7, v27

    goto/16 :goto_5

    :cond_16
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid package removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v35, 0x0

    move/from16 v11, v19

    goto/16 :goto_1

    :cond_17
    if-nez v18, :cond_24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v33, 0x0

    move/from16 v11, v19

    move-object/from16 v7, v27

    goto/16 :goto_5

    :catch_0
    move-exception v22

    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v35, 0x0

    move/from16 v11, v19

    goto/16 :goto_1

    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_19
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v35, 0x0

    goto/16 :goto_1

    :cond_1a
    if-nez v29, :cond_1b

    move-object/from16 v6, p0

    move-object/from16 v8, v17

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v6 .. v12}, Lcom/android/launcher3/home/HomeLoader;->getAppShortcutInfo(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;ZZ)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v26

    goto/16 :goto_7

    :cond_1b
    move-object/from16 v13, p0

    move-object v14, v7

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    invoke-direct/range {v13 .. v18}, Lcom/android/launcher3/home/HomeLoader;->getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/ComponentName;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v26

    goto/16 :goto_7

    :cond_1c
    const-wide/16 v4, 0x0

    goto/16 :goto_8

    :cond_1d
    if-eqz v7, :cond_1e

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v18

    if-eqz v18, :cond_1e

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    new-instance v5, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/model/BadgeCache;->getBadgeCount(Lcom/android/launcher3/common/model/BadgeCache$CacheKey;)I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    :cond_1e
    if-eqz v33, :cond_1f

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v18

    if-eqz v18, :cond_1f

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-nez v4, :cond_21

    const/16 v31, 0x0

    :goto_a
    if-eqz v31, :cond_22

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/base/item/IconInfo;->setInstallProgress(I)V

    :cond_1f
    :goto_b
    packed-switch v20, :pswitch_data_0

    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    move/from16 v0, v20

    int-to-long v8, v0

    invoke-virtual {v4, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/folder/FolderInfo;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v23, :cond_20

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_20
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_1

    :cond_21
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v31, v4

    goto :goto_a

    :cond_22
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    goto :goto_b

    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object/from16 v35, v26

    goto :goto_c

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :cond_23
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unexpected null IconInfo"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_24
    move/from16 v11, v19

    move-object/from16 v7, v27

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch -0x65
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dumpState()V
    .locals 4

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HomeLoader.mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HomeLoader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Home PageLoaderTask.mStopped="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    if-nez v0, :cond_0

    const-string v0, "task null "

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HotSeat Items size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Workspace Items size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    check-cast v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->isStopped()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public filterCurrentPageItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
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

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Lcom/android/launcher3/home/HomeLoader$31;

    invoke-direct {v6, p0}, Lcom/android/launcher3/home/HomeLoader$31;-><init>(Lcom/android/launcher3/home/HomeLoader;)V

    move-object/from16 v0, p3

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v7, v8, p1

    if-nez v7, :cond_2

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;
    .locals 4

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

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

.method public getAllAppItemInHome()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    const-wide/16 v10, -0x64

    const-wide/16 v8, -0x65

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_0

    :cond_1
    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v6, :cond_4

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_5

    :cond_4
    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_5
    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v6, :cond_6

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getAppsButton()Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 5

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    monitor-exit v3

    :goto_0
    return-object v1

    :cond_1
    monitor-exit v3

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getHotseatCountFromDb()I
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadHotseatCount()I

    move-result v0

    return v0
.end method

.method public getIgnorePackage(Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    instance-of v6, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v6, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object v2, v0

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    return-object v0
.end method

.method getItemsForDexSync()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    const-wide/16 v10, -0x66

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/home/HomeLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    iget v5, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method protected getUpdater()Lcom/android/launcher3/common/model/DataUpdater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method getUser(J)Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/UserHandleCompat;

    return-object v0
.end method

.method getWorkspaceScreenCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getWorkspaceScreenId(I)J
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount()I

    move-result v0

    if-ge v0, p1, :cond_0

    const-string v0, "HomeLoader"

    const-string v1, "wrong rank value for screen requested"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public hideApps(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->updateHideItems(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 23

    const-string v20, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    const-string v20, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v20, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromIntent(Landroid/content/Intent;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v11

    :goto_0
    if-nez v10, :cond_1

    const-string v20, "HomeLoader"

    const-string v21, "Can\'t construct ShorcutInfo with null intent"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_1
    return-object v9

    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    instance-of v0, v4, Landroid/graphics/Bitmap;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    check-cast v4, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_2
    :goto_2
    new-instance v9, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v9}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-eqz v7, :cond_3

    invoke-virtual {v9, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x1

    :cond_3
    if-eqz v11, :cond_9

    :goto_3
    iput-object v11, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const-string v20, "HomeLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "infoFromShortcutIntent EXTRA_USER "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/compat/UserHandleCompat;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v20

    if-eqz v20, :cond_4

    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v16

    const-string v20, "userid"

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x64

    cmp-long v20, v18, v20

    if-ltz v20, :cond_4

    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    :cond_4
    if-nez v7, :cond_5

    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->usingFallbackIcon:Z

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v7, v1}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_6

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v20

    if-eqz v20, :cond_6

    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v20

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v21

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v7, v1, v2}, Lcom/android/launcher3/util/DualAppUtils;->makeUserBadgedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_6
    invoke-virtual {v9, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    if-eqz v20, :cond_7

    invoke-static {v10}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v20

    if-nez v20, :cond_7

    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v10, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    if-eqz v15, :cond_7

    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->fromResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-static {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    :cond_7
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v13}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v10, v9, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    iput-boolean v5, v9, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    iput-object v8, v9, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    goto/16 :goto_1

    :cond_8
    const-string v20, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    instance-of v0, v6, Landroid/content/Intent$ShortcutIconResource;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object v8, v6

    check-cast v8, Landroid/content/Intent$ShortcutIconResource;

    iget-object v0, v8, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v8, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v11

    goto/16 :goto_3
.end method

.method insertWorkspaceScreen(Landroid/content/Context;IJ)J
    .locals 7

    const-wide/16 v4, -0x1

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, p2, :cond_1

    const-string v1, "HomeLoader"

    const-string v2, "insert page should be less than total workspace screen count."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-wide v4

    :cond_1
    cmp-long v1, p3, v4

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v4

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v3

    new-instance v1, Lcom/android/launcher3/home/HomeLoader$36;

    move-object v2, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/home/HomeLoader$36;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;JI)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    move-wide v4, p3

    goto :goto_1
.end method

.method protected loadDefaultLayout(Lcom/android/launcher3/common/model/AutoInstallsLayout;Z)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "HomeLoader"

    const-string v2, "use auto install layout for home"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v1, "default_workspace"

    const-string v2, "xml"

    invoke-virtual {p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_7

    new-instance v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_8

    move v6, v7

    :goto_1
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getDefaultLayoutParser()Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    move-result-object v0

    :cond_1
    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider;->createEmptyDB()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v7, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v9, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    :cond_3
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I

    move-result v1

    if-gtz v1, :cond_6

    if-eqz v6, :cond_6

    if-nez p2, :cond_5

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider;->createEmptyDB()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v7, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    :cond_4
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v9, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    :cond_5
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getDefaultLayoutParser()Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I

    :cond_6
    return-void

    :cond_7
    const-string v1, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default_workspace layout not found in package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v6, v8

    goto/16 :goto_1
.end method

.method protected loadDefaultLayoutCompleted()V
    .locals 3

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportCustomerDialerChange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->saveCustomerPageKey()V

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    const-string v1, "skt_phone20_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->changeDialerAppOnLoadDefaultLayout()V

    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->addAppsButtonForEasy()V

    :cond_1
    return-void
.end method

.method public loadPageItems(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Ljava/util/ArrayList;
    .locals 33
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

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v25

    if-nez v25, :cond_1

    const-string v2, "HomeLoader"

    const-string v7, "loadPageItems running with no launcher"

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "HomeLoader"

    const-string v7, "loadPageItems running with no screen : mBgOrderedScreens.isEmpty()"

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    if-gez p1, :cond_3

    invoke-interface/range {v25 .. v25}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->getCurrentWorkspaceScreen()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_3
    if-ltz p1, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_5

    :cond_4
    const-string v2, "HomeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadPageItems this rank is invalid : rank "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/16 v23, 0x0

    new-instance v12, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v12}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    const-wide/16 v14, 0x0

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v7, v7, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    filled-new-array {v2, v7}, [I

    move-result-object v2

    const-class v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v12, v14, v15, v2}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    if-nez p1, :cond_6

    const-string v5, "(screen=? AND container=?) OR (container=?)"

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const/16 v7, -0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    const/16 v7, -0x65

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/16 v23, 0x1

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0b003f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    const-wide/16 v14, 0x1

    const/4 v2, 0x1

    move/from16 v0, v22

    filled-new-array {v0, v2}, [I

    move-result-object v2

    const-class v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v12, v14, v15, v2}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    :goto_1
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_7

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_6
    const-string v5, "screen=? AND container=?"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const/16 v7, -0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    goto :goto_1

    :cond_7
    new-instance v9, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v9, v8}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    move-object/from16 v7, p0

    move-object/from16 v13, p2

    :try_start_0
    invoke-direct/range {v7 .. v13}, Lcom/android/launcher3/home/HomeLoader;->createItems(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/util/LongArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v11, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    :cond_a
    if-eqz v21, :cond_b

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "container in ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->makeFoldersIdToString(Lcom/android/launcher3/util/LongArrayMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v7, 0x29

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v13, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_d

    move-object/from16 v7, p0

    move-object/from16 v13, p2

    :try_start_1
    invoke-direct/range {v7 .. v13}, Lcom/android/launcher3/home/HomeLoader;->createItems(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/util/LongArrayMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_b
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v11, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    :cond_d
    const-string v2, "HomeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cursor is null. Exist empty folder. folders size : "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/launcher3/home/HomeLoader;->doHandlingItems(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->sortItemsInFolder(Lcom/android/launcher3/util/LongArrayMap;)V

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher3/home/HomeLoader;->reArrangeHotseatData(Ljava/util/ArrayList;)V

    :cond_f
    const-string v2, "HomeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loaded workspace in "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v30

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, "ms"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HomeLoader"

    const-string v7, "workspace layout: "

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v19

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v20

    const/16 v32, 0x0

    :goto_3
    move/from16 v0, v32

    move/from16 v1, v20

    if-ge v0, v1, :cond_13

    const-string v24, ""

    const-wide/16 v14, 0x0

    invoke-virtual {v12, v14, v15}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    const/16 v27, 0x0

    :goto_4
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v27

    if-ge v0, v2, :cond_11

    aget-object v2, v26, v27

    array-length v2, v2

    move/from16 v0, v32

    if-ge v0, v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v2, v26, v27

    aget-object v2, v2, v32

    if-eqz v2, :cond_10

    const-string v2, "#"

    :goto_5
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    :goto_6
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    :cond_10
    const-string v2, "."

    goto :goto_5

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "!"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_6

    :cond_12
    const-string v2, "HomeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[ "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " ]"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    :cond_13
    if-ltz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mIsPageLoaded:[Z

    const/4 v7, 0x1

    aput-boolean v7, v2, p1

    goto/16 :goto_0
.end method

.method registerCallbacks(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAppsButton(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v2, "HomeLoader"

    const-string v3, "removeAppsButton but apps button is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/home/HomeLoader$14;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/home/HomeLoader$14;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removePackagesAndComponents(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;I)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-nez p4, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, v9, p3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deletePackageFromDatabase(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v1, v7, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-static {v1, p3, v3}, Lcom/android/launcher3/home/HomeLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    iget-object v1, v7, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v0, p1, p3}, Lcom/android/launcher3/home/ExternalRequestQueue;->removeFromExternalRequestQueue(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "HomeLoader"

    const-string v1, "removePackagesAndComponents Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v10

    :cond_2
    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v0, Lcom/android/launcher3/home/HomeLoader$26;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/HomeLoader$26;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    invoke-virtual {v11, v0}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    goto :goto_0
.end method

.method public removeUnRestoredItems()V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeLoader;->getUnRestoredItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/home/HomeLoader$33;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/home/HomeLoader$33;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method removeWorkspaceItem(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/home/HomeLoader$20;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/home/HomeLoader$20;-><init>(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method removeWorkspaceItem(ZILjava/lang/String;Landroid/content/Intent;Z)V
    .locals 9

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v8

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    new-instance v0, Lcom/android/launcher3/home/HomeLoader$21;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move v4, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/home/HomeLoader$21;-><init>(Lcom/android/launcher3/home/HomeLoader;ZLjava/lang/String;IZLandroid/content/Intent;ZLcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOrderedScreen(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setPackageState(Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$11;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeLoader$11;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->unbindItemsOnMainThread()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->clearSBgDataStructures()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsPageLoaded:[Z

    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeLoader;->mIsFirstBind:Z

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.launcher3.SYSTEM_READY"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsSdCardReady:Z

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isExistSdCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/home/HomeLoader;->mIsSdCardReady:Z

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeLoader;->mIsSdCardReady:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showApps(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->updateAndBindItems(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public titleUpdate()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllAppItemInHome()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeLoader;->getNeedTitleUpdateIcons(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->getAppsButton()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v5, "HomeLoader"

    const-string v6, "titleUpdate. Nobody to tell about the new app. Launcher is probably loading."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v5, Lcom/android/launcher3/home/HomeLoader$39;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/launcher3/home/HomeLoader$39;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unRegisterCallbacks()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindItemsOnMainThread()V
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v1, Lcom/android/launcher3/home/HomeLoader$7;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/home/HomeLoader$7;-><init>(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateContactShortcutInfo(JLandroid/content/Intent;)V
    .locals 3

    new-instance v0, Lcom/android/launcher3/home/HomeLoader$40;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeLoader$40;-><init>(Lcom/android/launcher3/home/HomeLoader;JLandroid/content/Intent;)V

    new-instance v1, Lcom/android/launcher3/home/HomeLoader$41;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/home/HomeLoader$41;-><init>(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateContainerForDexSync(ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v2

    new-instance v0, Lcom/android/launcher3/home/HomeLoader$35;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeLoader$35;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/home/HomeLoader$34;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/home/HomeLoader$34;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateItemsOnlyDB(Ljava/util/ArrayList;)V
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "hidden"

    iget v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V
    .locals 12

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, ""

    invoke-virtual {p1, v8}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v9, p0, Lcom/android/launcher3/home/HomeLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v8, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v10

    const/16 v8, 0x8

    invoke-virtual {p3, v8}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v8

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v9, v10, v11, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v10, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v10, :cond_1

    move-object v0, v5

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v10, v4, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v10, p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget v10, v4, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    invoke-virtual {p3, v10}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v10

    iput v10, v4, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v6

    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v9, Lcom/android/launcher3/home/HomeLoader$37;

    invoke-direct {v9, p0, v6, v7, p2}, Lcom/android/launcher3/home/HomeLoader$37;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updatePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    goto :goto_0
.end method

.method public updateSessionDisplayInfo(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$12;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeLoader$12;-><init>(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateShortcut(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v6}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_0

    iget-object v8, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p2, v8}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v8, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v4, v8}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v3

    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v7, Lcom/android/launcher3/home/HomeLoader$13;

    invoke-direct {v7, p0, v3, v5, p2}, Lcom/android/launcher3/home/HomeLoader$13;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateShortcutIcons()V
    .locals 12

    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v7, v0

    iget-boolean v7, v7, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    if-eqz v7, :cond_0

    iget v7, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/item/IconInfo;->getOriginalIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v3, v5

    invoke-static {}, Lcom/android/launcher3/util/ShortcutTray;->isIconTrayEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    iget-object v10, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v7, v5, v10}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_1
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v7}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    sget-object v10, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v10, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v10}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v10

    iget-object v11, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v11}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    invoke-static {v7, v3, v10, v11}, Lcom/android/launcher3/util/DualAppUtils;->makeUserBadgedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_2
    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v7, v0

    invoke-virtual {v7, v3}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_3
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v7, "HomeLoader"

    const-string v9, "updateShortcutIcons. Nobody to tell about the new app. Launcher is probably loading."

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    :goto_1
    return-void

    :cond_4
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v9, Lcom/android/launcher3/home/HomeLoader$38;

    invoke-direct {v9, p0, v2, v6}, Lcom/android/launcher3/home/HomeLoader$38;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v9}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_5
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateUnavailablePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
    .locals 0

    return-void
.end method
