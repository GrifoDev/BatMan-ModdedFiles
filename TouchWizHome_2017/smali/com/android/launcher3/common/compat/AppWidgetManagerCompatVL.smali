.class Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;
.super Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
.source "AppWidgetManagerCompatVL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static sGetInstalledProvidersForProfile:Ljava/lang/reflect/Method;


# instance fields
.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->sGetInstalledProvidersForProfile:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private getWidgetProvider(ZLandroid/os/UserHandle;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-array v0, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v8

    const-class v3, Landroid/os/UserHandle;

    aput-object v3, v0, v7

    sget-object v3, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->sGetInstalledProvidersForProfile:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    const-string v3, "android.appwidget.AppWidgetManager"

    const-string v4, "getInstalledProvidersForProfile"

    invoke-static {v3, v4, v0, v7}, Lcom/android/launcher3/util/Reflection;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->sGetInstalledProvidersForProfile:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v3, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->sGetInstalledProvidersForProfile:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->sGetInstalledProvidersForProfile:Ljava/lang/reflect/Method;

    new-array v6, v6, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    sget v3, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->SEM_WIDGET_CATEGORY_SAMSUNG_EASYHOME_SCREEN:I

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    aput-object p2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v1

    :cond_2
    sget v3, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->SEM_WIDGET_CATEGORY_SAMSUNG_HOME_SCREEN:I

    goto :goto_0
.end method


# virtual methods
.method public bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public findProvider(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->getWidgetProvider(ZLandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->getWidgetProvider(ZLandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllProvidersMap()Ljava/util/HashMap;
    .locals 8
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

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v5, v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    new-instance v6, Lcom/android/launcher3/util/ComponentKey;

    iget-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v6, v7, v3}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getBadgeBitmap(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v11, 0x0

    iget-boolean v8, p1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-nez v8, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f090127

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v0, v2

    sub-int v8, p3, v2

    sub-int/2addr v8, v0

    const v9, 0x7f090128

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v11, v11, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v8, p3, v3

    sub-int/2addr v8, v0

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    invoke-virtual {v1, v0, v7}, Landroid/graphics/Rect;->offset(II)V

    :goto_1
    iget-object v8, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v6, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v1, v11}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v8, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_3

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v3

    sub-int/2addr v8, v0

    invoke-virtual {v1, v8, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v5, v11, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 1

    iget-boolean v0, p1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    goto :goto_0
.end method

.method public loadIcon(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getIcon(Landroid/content/Context;Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V
    .locals 9

    const v8, 0x7f080002

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p3

    move v2, p2

    move v4, p5

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v6

    invoke-static {p3, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v6

    invoke-static {p3, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
