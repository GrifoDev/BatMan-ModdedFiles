.class public Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;
.super Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
.source "DeferredLauncherActivityInfo.java"


# instance fields
.field private mActualInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

.field private final mComponent:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mComponent:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object p3, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized getActualInfo()Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mActualInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mActualInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mActualInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->getActualInfo()Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFirstInstallTime()J
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->getActualInfo()Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->getActualInfo()Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->getActualInfo()Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/compat/DeferredLauncherActivityInfo;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    return-object v0
.end method
