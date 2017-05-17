.class public Lcom/android/launcher3/widget/model/WidgetPreviewLoader;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;,
        Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;,
        Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;,
        Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WidgetPreviewLoader"

.field private static final WIDGET_PREVIEW_ICON_PADDING_PERCENTAGE:F = 0.25f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;

.field private final mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private final mMainThreadExecutor:Lcom/android/launcher3/util/MainThreadExecutor;

.field private final mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

.field private final mPackageVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field private final mProfileBadgeMargin:I

.field private final mUnusedBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/model/IconCache;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    new-instance v0, Lcom/android/launcher3/util/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/util/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mMainThreadExecutor:Lcom/android/launcher3/util/MainThreadExecutor;

    iput-object p1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    new-instance v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mProfileBadgeMargin:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;[JLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->writeToDb(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;[JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;Landroid/graphics/Bitmap;Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->readFromDb(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;Landroid/graphics/Bitmap;Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;Ljava/lang/String;)[J
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->getPackageVersion(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;Lcom/android/launcher3/Launcher;Ljava/lang/Object;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->generatePreview(Lcom/android/launcher3/Launcher;Ljava/lang/Object;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private generatePreview(Lcom/android/launcher3/Launcher;Ljava/lang/Object;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    instance-of v0, p2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v2, p2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->generateShortcutPreview(Lcom/android/launcher3/Launcher;Landroid/content/pm/ResolveInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private generateShortcutPreview(Lcom/android/launcher3/Launcher;Landroid/content/pm/ResolveInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    if-nez p5, :cond_0

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    invoke-static {p3, v0, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p5

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v10, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v11, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v11}, Lcom/android/launcher3/common/model/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v10, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v10, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v10, 0xf

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v10, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f09013c

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const v10, 0x7f09013a

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const v10, 0x7f09013b

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    sub-int v10, p3, v5

    sub-int v9, v10, v6

    add-int v10, v5, v9

    add-int v11, v7, v9

    invoke-virtual {v4, v5, v7, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v10

    iget v1, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    const/16 v10, 0xff

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p5

    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v10, p3, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move/from16 v0, p4

    if-eq v10, v0, :cond_2

    :cond_1
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Improperly sized bitmap passed as argument"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0
.end method

.method private getObjectKey(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;
    .locals 5

    instance-of v1, p1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    new-instance v1, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v2, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v1, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPackageVersion(Ljava/lang/String;)[J
    .locals 8

    iget-object v4, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    if-nez v2, :cond_0

    const/4 v3, 0x2

    new-array v2, v3, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const/4 v3, 0x0

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v6, v5

    aput-wide v6, v2, v3

    const/4 v3, 0x1

    iget-wide v6, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    aput-wide v6, v2, v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v4

    return-object v2

    :catch_0
    move-exception v0

    const-string v3, "WidgetPreviewLoader"

    const-string v5, "PackageInfo not found"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mMainThreadExecutor:Lcom/android/launcher3/util/MainThreadExecutor;

    new-instance v2, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$1;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$1;-><init>(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readFromDb(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;Landroid/graphics/Bitmap;Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "shortcut_and_widget_previews"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "preview_bitmap"

    aput-object v4, v2, v3

    const-string v3, "componentName = ? AND profileId = ? AND size = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v7, p1, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    # getter for: Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;->access$000(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-virtual {p3}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p2, v11, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p3}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    array-length v1, v8

    invoke-static {v8, v0, v1, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v10

    const/4 v0, 0x0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v10

    :try_start_3
    const-string v0, "WidgetPreviewLoader"

    const-string v1, "Error loading preview from DB"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private removePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;J)V
    .locals 7

    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "shortcut_and_widget_previews"

    const-string v3, "packageName = ? AND profileId = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    const-string v1, "WidgetPreviewLoader"

    const-string v2, "Unable to delete items from DB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private writeToDb(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;[JLandroid/graphics/Bitmap;)V
    .locals 6

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "componentName"

    iget-object v3, p1, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "profileId"

    iget-object v3, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v4, p1, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "size"

    # getter for: Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;->access$000(Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "packageName"

    iget-object v3, p1, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "version"

    const/4 v3, 0x0

    aget-wide v4, p2, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "lastUpdated"

    const/4 v3, 0x1

    aget-wide v4, p2, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "preview_bitmap"

    invoke-static {p3}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "shortcut_and_widget_previews"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "WidgetPreviewLoader"

    const-string v3, "Error saving image to DB"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public generateWidgetPreview(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 36

    if-gez p3, :cond_0

    const p3, 0x7fffffff

    :cond_0
    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->previewImage:I

    move/from16 v32, v0

    if-eqz v32, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :cond_1
    :goto_0
    if-eqz v7, :cond_6

    const/16 v29, 0x1

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanX()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanY()I

    move-result v22

    const/16 v24, 0x0

    if-eqz v29, :cond_7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    :goto_2
    const/high16 v19, 0x3f800000    # 1.0f

    if-eqz p5, :cond_2

    const/16 v32, 0x0

    aput v18, p5, v32

    :cond_2
    move/from16 v0, v18

    move/from16 v1, p3

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mProfileBadgeMargin:I

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    sub-int v32, p3, v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v19, v32, v33

    :cond_3
    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v32, v19, v32

    if-eqz v32, :cond_4

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v19

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v19

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v17, v0

    :cond_4
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    if-nez p4, :cond_8

    sget-object v32, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_3
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    sub-int v32, v32, v18

    div-int/lit8 v30, v32, 0x2

    if-eqz v29, :cond_9

    const/16 v32, 0x0

    add-int v33, v30, v18

    move/from16 v0, v30

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v17

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_4
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mProfileBadgeMargin:I

    move/from16 v33, v0

    add-int v33, v33, v17

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getBadgeBitmap(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v32

    return-object v32

    :cond_5
    const-string v32, "WidgetPreviewLoader"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Can\'t load widget preview drawable 0x"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->previewImage:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " for provider: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/16 v29, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f020115

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    check-cast v32, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    mul-int v18, v32, v21

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v32

    mul-int v17, v32, v22

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/16 v32, 0x0

    sget-object v33, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_3

    :cond_9
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v32

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    new-instance v23, Landroid/graphics/Rect;

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    move-object/from16 v0, v23

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v26, v19, v32

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v25, v19, v32

    new-instance v8, Landroid/graphics/RectF;

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v26

    move/from16 v3, v25

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v27, v0

    const/4 v10, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v10, v0, :cond_b

    const/16 v28, 0x0

    const/4 v14, 0x0

    :goto_6
    move/from16 v0, v22

    if-ge v14, v0, :cond_a

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v6, v0, v1, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    add-float v28, v28, v25

    goto :goto_6

    :cond_a
    add-int/lit8 v10, v10, 0x1

    add-float v27, v27, v26

    goto :goto_5

    :cond_b
    int-to-float v0, v5

    move/from16 v32, v0

    const/high16 v33, 0x3e800000    # 0.25f

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v15, v0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v32, v0

    mul-int/lit8 v33, v15, 0x2

    add-int v33, v33, v5

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->loadIcon(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_c

    int-to-float v0, v5

    move/from16 v32, v0

    mul-float v32, v32, v12

    sub-float v32, v26, v32

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    add-int v9, v32, v30

    int-to-float v0, v5

    move/from16 v32, v0

    mul-float v32, v32, v12

    sub-float v32, v25, v32

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v31, v0

    int-to-float v0, v5

    move/from16 v32, v0

    mul-float v32, v32, v12

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    add-int v32, v32, v9

    int-to-float v0, v5

    move/from16 v33, v0

    mul-float v33, v33, v12

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    add-int v33, v33, v31

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v11, v9, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v11, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_7
    const/16 v32, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :catch_0
    move-exception v32

    goto :goto_7
.end method

.method public getPreview(Ljava/lang/Object;IILcom/android/launcher3/widget/view/PreviewLoadListener;)Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;
    .locals 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->getObjectKey(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;

    move-result-object v2

    new-instance v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;-><init>(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;Lcom/android/launcher3/widget/model/WidgetPreviewLoader$WidgetCacheKey;Ljava/lang/Object;IILcom/android/launcher3/widget/view/PreviewLoadListener;)V

    sget-object v1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v1, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;-><init>(Lcom/android/launcher3/widget/model/WidgetPreviewLoader;Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadTask;)V

    return-object v1
.end method

.method public removeObsoletePreviews(Ljava/util/ArrayList;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/Utilities;->assertWorkerThread()V

    new-instance v25, Landroid/util/LongSparseArray;

    invoke-direct/range {v25 .. v25}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v7, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v24

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashSet;

    if-nez v21, :cond_0

    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v17, v20

    check-cast v17, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v24

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    :cond_2
    new-instance v22, Landroid/util/LongSparseArray;

    invoke-direct/range {v22 .. v22}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v6}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$CacheDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "shortcut_and_widget_previews"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "profileId"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "packageName"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "lastUpdated"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "version"

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :cond_3
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const/4 v6, 0x1

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/4 v6, 0x2

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v6, 0x3

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-virtual/range {v25 .. v27}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashSet;

    if-eqz v21, :cond_4

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->getPackageVersion(Ljava/lang/String;)[J

    move-result-object v30

    const/4 v6, 0x0

    aget-wide v6, v30, v6

    cmp-long v6, v6, v28

    if-nez v6, :cond_4

    const/4 v6, 0x1

    aget-wide v6, v30, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_3

    :cond_4
    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashSet;

    if-nez v21, :cond_5

    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v15

    :try_start_1
    const-string v6, "WidgetPreviewLoader"

    const-string v7, "Error updatating widget previews"

    invoke-static {v6, v7, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    return-void

    :cond_7
    const/16 v16, 0x0

    :goto_4
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    move/from16 v0, v16

    if-ge v0, v6, :cond_a

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-wide/from16 v0, v26

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;J)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v6

    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v6

    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :cond_a
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public removePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;J)V

    return-void
.end method
