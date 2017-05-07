.class public abstract Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
.super Ljava/lang/Object;
.source "AppWidgetManagerCompat.java"


# static fields
.field public static SEM_WIDGET_CATEGORY_SAMSUNG_EASYHOME_SCREEN:I

.field public static SEM_WIDGET_CATEGORY_SAMSUNG_HOME_SCREEN:I

.field private static sInstance:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->sInstanceLock:Ljava/lang/Object;

    const/16 v0, 0x200

    sput v0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->SEM_WIDGET_CATEGORY_SAMSUNG_HOME_SCREEN:I

    const/16 v0, 0x100

    sput v0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->SEM_WIDGET_CATEGORY_SAMSUNG_EASYHOME_SCREEN:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    .locals 3

    sget-object v1, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    monitor-exit v1

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatV16;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatV16;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z
.end method

.method public abstract findProvider(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
.end method

.method public abstract getAllProviders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllProvidersMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract getBadgeBitmap(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.end method

.method public getLauncherAppWidgetInfo(I)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;
.end method

.method public abstract loadIcon(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract loadLabel(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Ljava/lang/String;
.end method

.method public abstract loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V
.end method
