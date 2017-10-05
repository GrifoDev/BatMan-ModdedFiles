.class public Lcom/android/launcher3/common/view/LiveIconManager;
.super Ljava/lang/Object;
.source "LiveIconManager.java"


# static fields
.field public static final CALENDAR_ALARM_INTENT_NAME:Ljava/lang/String; = "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"

.field public static final CLOCK_ALARM_INTENT_NAME:Ljava/lang/String; = "com.samsung.action.EVERY_MINUTE_CLOCK_UPDATE"

.field private static final DEFAULT_PACKAGE_NAME_ANDROID_CALENDAR:Ljava/lang/String; = "com.android.calendar"

.field public static final DEFAULT_PACKAGE_NAME_CLOCK:Ljava/lang/String; = "com.sec.android.app.clockpackage"

.field private static final DEFAULT_PACKAGE_NAME_SAMSUNG_CALENDAR:Ljava/lang/String; = "com.samsung.android.calendar"

.field private static final TAG:Ljava/lang/String;

.field private static final sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

.field private static sFactories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ">;",
            "Lcom/android/launcher3/common/view/LiveIconFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher3/common/view/LiveIconManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/launcher3/common/view/BitmapCacheContainer;

    invoke-direct {v0}, Lcom/android/launcher3/common/view/BitmapCacheContainer;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->sFactories:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyKnoxLiveIcon(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/launcher3/common/view/LiveIconManager;->isKnoxLiveIcon(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const-string v3, "liveicon_cmpname"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v1

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static clearLiveIconCache(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/view/BitmapCacheContainer;->removeBitmapCache(Ljava/lang/String;)V

    return-void
.end method

.method private static createLiveIconBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sFactories:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/LiveIconFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/common/view/LiveIconFactory;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/common/view/LiveIconFactory;-><init>(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sFactories:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/view/LiveIconFactory;->create(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static final getCalendarPackages()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/common/view/LiveIconManager;->requestRefreshLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/common/view/BitmapCacheContainer;->getBitmapCache(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/common/view/LiveIconManager;->createLiveIconBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/launcher3/common/view/BitmapCacheContainer;->putBitmapCache(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->TAG:Ljava/lang/String;

    const-string v3, "getLiveIcon: complete(sync_created)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0
.end method

.method private static final getLiveIconPackages()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getFloatingClockPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCscClockPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isCalendarPackage(Ljava/lang/String;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/launcher3/common/view/LiveIconManager;->getCalendarPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isKnoxLiveIcon(Landroid/content/Intent;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "userid"

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-long v2, v4

    const-string v4, "liveicon_cmpname"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v0, v4, v1

    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isLiveIconPackage(Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 2

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isLiveIconPackage(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object p0, v2, v1

    :cond_0
    invoke-static {}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIconPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static onResponseLiveIcon(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/graphics/Bitmap;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->sCache:Lcom/android/launcher3/common/view/BitmapCacheContainer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/common/view/BitmapCacheContainer;->putBitmapCache(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/android/launcher3/common/view/LiveIconManager;->TAG:Ljava/lang/String;

    const-string v1, "onResponseLiveIcon: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static requestRefreshLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 3

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sFactories:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/LiveIconFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/common/view/LiveIconFactory;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/common/view/LiveIconFactory;-><init>(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    sget-object v2, Lcom/android/launcher3/common/view/LiveIconManager;->sFactories:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/view/LiveIconFactory;->requestCreate(Landroid/content/Context;)Z

    return-void
.end method

.method public static setCalendarAlarm(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x8000000

    invoke-static {p0, v7, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->add(II)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v7, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static setClockAlarm(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.action.EVERY_MINUTE_CLOCK_UPDATE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x8000000

    invoke-static {p0, v7, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v5, 0xc

    invoke-virtual {v1, v5, v8}, Ljava/util/Calendar;->add(II)V

    const/16 v5, 0xd

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v8, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method
