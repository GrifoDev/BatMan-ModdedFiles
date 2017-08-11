.class public Lcom/android/systemui/recents/model/RecentsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "RecentsPackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;
    }
.end annotation


# static fields
.field private static mInstalledState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mInstalledState:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private initilize(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;-><init>(Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;)V

    iput p3, v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->versionCode:I

    if-eqz p2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->intent:Landroid/content/Intent;

    :cond_0
    sget-object v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mInstalledState:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->updateInstalledState(Ljava/lang/String;)V

    return-void
.end method

.method public static isInstalled(Ljava/lang/String;)Z
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mInstalledState:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->installed:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateInstalledState(Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v3, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mInstalledState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    iput-boolean v5, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->installed:Z

    return-void

    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v3, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->installed:Z

    iget-object v3, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    iget-boolean v3, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->installed:Z

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    iput-boolean v3, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->installed:Z

    :cond_2
    iget v3, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->versionCode:I

    if-ltz v3, :cond_4

    iget-boolean v3, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->installed:Z

    if-eqz v3, :cond_3

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v6, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->versionCode:I

    if-lt v3, v6, :cond_3

    move v5, v4

    :cond_3
    iput-boolean v5, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->installed:Z

    :cond_4
    return-void

    :cond_5
    move v3, v5

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->updateInstalledState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->onPackageModified(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 3

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->updateInstalledState(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->getChangingUserId()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;-><init>(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->updateInstalledState(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->getChangingUserId()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;-><init>(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "com.android.settings"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->initilize(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.samsung.helphub"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->initilize(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.samsung.android.voc"

    const-string/jumbo v2, "voc://view/contactUs"

    const v3, 0xa220268

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->initilize(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
