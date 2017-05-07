.class public Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;
.super Ljava/lang/Object;
.source "MenuAppLoader.java"


# static fields
.field private static final DEBUGGABLE:Z


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mAbortLoader:Z

.field private mAllItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadgeCache:Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;

.field private final mIsSafeMode:Z

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

.field private final mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

.field private final mUserMgr:Landroid/os/UserManager;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final titleAndIcon:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->added:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->removed:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->modified:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->titleAndIcon:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mBadgeCache:Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mUserMgr:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mIsSafeMode:Z

    return-void
.end method

.method private createApp(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;
    .locals 13

    const/4 v10, 0x4

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v8, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;

    invoke-direct {v8, v0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    iput-object p2, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    iput-boolean v12, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mDirty:Z

    invoke-direct {p0, v3, v4, p2}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->setTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->setBadgeCount(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    iget-boolean v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mSystemApp:Z

    if-nez v7, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v6, v5, v8, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-wide v8, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v8, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCreateTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput v10, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v7, p2}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    :cond_2
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "[DS]MenuAppLoader"

    const-string/jumbo v8, "createApp title(%s) package(%s) isDisabled(%d) user(%d)"

    new-array v9, v10, [Ljava/lang/Object;

    iget-object v10, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    aput-object v10, v9, v11

    aput-object v5, v9, v12

    iget v10, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v3, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v8, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;

    iget-object v9, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {v8, v9, p2}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v7, "[DS]MenuAppLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cannot find PackageInfo for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private createDbAppItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->action:I

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    iget-wide v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    iput-wide v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->id:J

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method private findActivitiesForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private setBadgeCount(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mBadgeCache:Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mBadgeCount:I

    return-void
.end method

.method private setTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->titleAndIcon:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->titleAndIcon:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->titleAndIcon:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->titleAndIcon:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->titleAndIcon:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateOrCreateApp(Landroid/content/ComponentName;JLjava/lang/String;Landroid/os/UserHandle;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;
    .locals 16

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v12, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {v12, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-nez v7, :cond_2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/16 v12, 0x2000

    invoke-virtual {v11, v10, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    iget v11, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    :goto_0
    iget v11, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v12, 0x40000

    and-int/2addr v11, v12

    if-eqz v11, :cond_5

    const/4 v4, 0x1

    :goto_1
    if-nez v6, :cond_0

    if-eqz v4, :cond_6

    :cond_0
    const/4 v5, 0x0

    :goto_2
    if-eqz v4, :cond_8

    new-instance v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v11}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;-><init>(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-wide v12, v9, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v12, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCreateTime:J

    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUnavailable:Z

    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v12, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {v12, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p5

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->setBadgeCount(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    :cond_1
    :goto_3
    :try_start_2
    sget-boolean v11, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v11, :cond_2

    const-string/jumbo v11, "[DS]MenuAppLoader"

    const-string/jumbo v12, "title(%s) pkgName(%s) appInfo.flags(%d) "

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p4, v13, v14

    const/4 v14, 0x1

    aput-object v10, v13, v14

    iget v14, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_4
    if-eqz v7, :cond_3

    iget-wide v12, v7, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    const-wide/16 v14, -0x1

    cmp-long v11, v12, v14

    if-nez v11, :cond_3

    move-wide/from16 v0, p2

    iput-wide v0, v7, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    const/4 v11, 0x0

    iput-boolean v11, v7, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mDirty:Z

    move-object/from16 v0, p5

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v7

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_6
    :try_start_3
    iget v11, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v12, 0x800000

    and-int/2addr v11, v12

    if-eqz v11, :cond_7

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mIsSafeMode:Z

    if-eqz v11, :cond_1

    if-eqz v5, :cond_1

    new-instance v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v11}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;-><init>(Landroid/content/ComponentName;Z)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-wide v12, v9, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v12, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCreateTime:J

    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUnavailable:Z

    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v12, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {v12, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->setBadgeCount(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    move-object/from16 v0, p5

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v7, v8

    goto/16 :goto_3

    :catch_0
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v7, v8

    goto :goto_4
.end method

.method private updatePackageActivities(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getDBManager()Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    move-result-object v10

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v4, v9, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v12, v9, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    move-object/from16 v0, p4

    invoke-virtual {v12, v4, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;-><init>()V

    const/4 v12, 0x5

    iput v12, v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->action:I

    iget-wide v12, v9, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    iput-wide v12, v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->id:J

    move-object/from16 v0, p4

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->user:Landroid/os/UserHandle;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v12, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v13, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;

    move-object/from16 v0, p4

    invoke-direct {v13, v4, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-nez v9, :cond_3

    move-object/from16 v0, p4

    invoke-direct {p0, v5, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->createApp(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->generateNewAppOrderId()J

    move-result-wide v12

    iput-wide v12, v9, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    const/4 v12, 0x0

    iput-boolean v12, v9, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mDirty:Z

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->createDbAppItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v11, v9, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v9, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-direct {p0, v9, v12, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->setTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v12, v9, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v7, 0x0

    :goto_2
    const/4 v12, 0x0

    iput-boolean v12, v9, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUnavailable:Z

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_2

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;-><init>()V

    const/4 v12, 0x2

    iput v12, v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->action:I

    iget-wide v12, v9, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    iput-wide v12, v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->id:J

    iget-object v12, v9, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iput-object v12, v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->user:Landroid/os/UserHandle;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v12, v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->updateAppItems(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Ljava/util/List;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public abortLoader()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mAbortLoader:Z

    return-void
.end method

.method public loadAllItems(Z)Ljava/util/Map;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "[DS]MenuAppLoader"

    const-string/jumbo v47, "loadAllItems"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mAbortLoader:Z

    new-instance v4, Ljava/util/HashMap;

    const/16 v47, 0x32

    move/from16 v0, v47

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mAllItems:Ljava/util/Map;

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    const/16 v47, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v47

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mUserMgr:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v47

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v46

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    :goto_1
    invoke-interface/range {v46 .. v46}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :cond_1
    :goto_2
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v44

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v47

    move/from16 v0, v47

    if-eq v4, v0, :cond_5

    invoke-virtual/range {v43 .. v43}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    const-string/jumbo v4, "[DS]MenuAppLoader"

    const-string/jumbo v47, "Do not display knox app, current[%d] other[%d]... "

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    const/16 v50, 0x0

    aput-object v49, v48, v50

    invoke-virtual/range {v43 .. v43}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    const/16 v50, 0x1

    aput-object v49, v48, v50

    invoke-static/range {v47 .. v48}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-wide/16 v28, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_4
    const-wide/16 v30, 0x0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual/range {v43 .. v43}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v47

    const/high16 v48, 0xc0000

    move-object/from16 v0, v22

    move/from16 v1, v48

    move/from16 v2, v47

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v24

    if-eqz v24, :cond_1

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "[DS]MenuAppLoader"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "user : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v43 .. v43}, Landroid/os/UserHandle;->hashCode()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " - "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v24, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mAbortLoader:Z

    if-nez v4, :cond_1

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v47, "sstream.app"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "[DS]MenuAppLoader"

    const-string/jumbo v47, "remove from apps (SStream App)"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->createApp(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    goto :goto_3

    :cond_8
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v4, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getDBManager()Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrder;->CONTENT_URI(I)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getTaskBarDBCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v11

    if-nez v11, :cond_a

    const-string/jumbo v4, "[DS]MenuAppLoader"

    const-string/jumbo v47, "loadAllItems(), cursor is null!!!"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_9
    const-wide/16 v32, 0x0

    goto :goto_4

    :cond_a
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v4, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    :goto_5
    :try_start_1
    const-string/jumbo v4, "_id"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string/jumbo v4, "title"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    const-string/jumbo v4, "componentName"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v4, "profileId"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mAbortLoader:Z

    if-nez v4, :cond_d

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v20, 0x0

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move/from16 v0, v40

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v47, "user"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v9

    if-eqz v12, :cond_b

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->updateOrCreateApp(Landroid/content/ComponentName;JLjava/lang/String;Landroid/os/UserHandle;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v20

    if-nez v20, :cond_b

    new-instance v15, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;

    invoke-direct {v15}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;-><init>()V

    const/4 v4, 0x5

    iput v4, v15, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->action:I

    iput-wide v6, v15, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->id:J

    iput-object v9, v15, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->user:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_c
    const-wide/16 v34, 0x0

    goto/16 :goto_5

    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mIsSafeMode:Z

    if-nez v4, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-eqz v4, :cond_11

    :cond_e
    :goto_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v4, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v36

    :goto_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mAllItems:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mAbortLoader:Z

    if-eqz v4, :cond_13

    const/4 v10, 0x0

    :cond_f
    :goto_9
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v4, :cond_19

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    :goto_a
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v4, :cond_10

    const-string/jumbo v4, "[DS]MenuAppLoader"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "loadAllItems; aborted: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mAbortLoader:Z

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "[DS]MenuAppLoader"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "    Query PkgMgr for all main intents: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sub-long v48, v30, v28

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "[DS]MenuAppLoader"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "    Create AppItem for all main intents: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sub-long v48, v32, v30

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " / "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sub-long v48, v32, v28

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "[DS]MenuAppLoader"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "    Query AppOrder database table: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sub-long v48, v34, v32

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " / "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sub-long v48, v34, v28

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "[DS]MenuAppLoader"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "    Merge AppOrder and PkgMgr data: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sub-long v48, v36, v34

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " / "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sub-long v48, v36, v28

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "[DS]MenuAppLoader"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "    Normalize items and update DB: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sub-long v48, v38, v36

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " / "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sub-long v48, v38, v28

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mAllItems:Ljava/util/Map;

    return-object v10

    :cond_11
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->updateAppItems(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_7

    :cond_12
    const-wide/16 v36, 0x0

    goto/16 :goto_8

    :cond_13
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    move-wide/from16 v48, v0

    const-wide/16 v50, -0x1

    cmp-long v4, v48, v50

    if-nez v4, :cond_14

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->generateNewAppOrderId()J

    move-result-wide v48

    move-wide/from16 v0, v48

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mDirty:Z

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    move-wide/from16 v48, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->setNewAppOrderId(J)V

    goto :goto_b

    :cond_15
    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    sget-object v47, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;

    const/16 v48, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v48

    invoke-virtual {v4, v10, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;Z)Ljava/util/List;

    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_16
    :goto_c
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mDirty:Z

    if-eqz v4, :cond_16

    new-instance v41, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;

    invoke-direct/range {v41 .. v41}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;-><init>()V

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x3

    move-object/from16 v0, v41

    iput v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->action:I

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v0, v41

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    :goto_d
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    move-wide/from16 v48, v0

    move-wide/from16 v0, v48

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->id:J

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v41

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    move-object/from16 v0, v41

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->user:Landroid/os/UserHandle;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mDirty:Z

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_17
    const/4 v4, 0x4

    move-object/from16 v0, v41

    iput v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->action:I

    goto :goto_d

    :cond_18
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v0, v42

    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->updateAppItems(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Ljava/util/List;)V

    goto/16 :goto_9

    :cond_19
    const-wide/16 v38, 0x0

    goto/16 :goto_a
.end method

.method refreshAllApps()V
    .locals 14

    sget-boolean v10, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v10, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mAbortLoader:Z

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->titleAndIcon:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    iget-object v11, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v11, v10, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->titleAndIcon:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    iput-object v3, v10, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v11, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->titleAndIcon:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    iget-object v13, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/os/UserHandle;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->titleAndIcon:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v10, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->titleAndIcon:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v10, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v10, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    new-instance v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;-><init>()V

    const/4 v10, 0x2

    iput v10, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->action:I

    iget-wide v10, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    iput-wide v10, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->id:J

    iget-object v10, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->title:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    iput-object v10, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->user:Landroid/os/UserHandle;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mAbortLoader:Z

    if-eqz v10, :cond_0

    :cond_2
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mAbortLoader:Z

    if-nez v10, :cond_3

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_3
    :goto_2
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v10, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-string/jumbo v10, "[DS]MenuAppLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "refreshAllApps; aborted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mAbortLoader:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", refresh time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v6, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    iget-object v10, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v10, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v10, v9}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->updateAppItems(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Ljava/util/List;)V

    goto :goto_2
.end method

.method public removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v5, v0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;-><init>()V

    const/4 v5, 0x5

    iput v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->action:I

    iget-wide v6, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    iput-wide v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->id:J

    iput-object p2, v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->user:Landroid/os/UserHandle;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->updateAppItems(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method updateBadgeCounts(Ljava/util/Map;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v7, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v5, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mBadgeCount:I

    if-eq v5, v3, :cond_0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mBadgeCount:I

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->findActivitiesForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->updatePackageActivities(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method updatePackageAsUserAvailable(Landroid/content/Context;ZLandroid/os/UserHandle;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v2, v3, :cond_0

    if-eqz p2, :cond_1

    iget v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    goto :goto_1

    :cond_2
    return-void
.end method

.method updatePackageAvailability(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .locals 5

    if-eqz p3, :cond_1

    invoke-direct {p0, p2, p4}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->findActivitiesForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1, p2, v2, p4}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->updatePackageActivities(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUnavailable:Z

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUnavailable:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, p4}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method updatePackageSuspended(Landroid/content/Context;ZLjava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    iget v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    goto :goto_1

    :cond_2
    return-void
.end method
