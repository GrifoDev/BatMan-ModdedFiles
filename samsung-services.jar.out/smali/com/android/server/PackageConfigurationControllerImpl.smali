.class public Lcom/android/server/PackageConfigurationControllerImpl;
.super Ljava/lang/Object;
.source "PackageConfigurationControllerImpl.java"

# interfaces
.implements Lcom/android/server/PackageConfigurationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageConfigurationControllerImpl$1;,
        Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final CATEGORY_IDX:I = 0x2

.field private static final CATEGORY_PROCESS_KILL:Ljava/lang/String; = "category = \'processKill\'"

.field private static final CATEGORY_PROCESS_KILL_POLICY:Ljava/lang/String; = "category = \'killPolicy\'"

.field private static final CATEGORY_SCREEN_RATIO:Ljava/lang/String; = "category = \'screenRatio\'"

.field private static final DATA1_IDX:I = 0x3

.field private static final ITEM_TABLE:Ljava/lang/String; = "policy_item"

.field private static final ITEM_URI:Landroid/net/Uri;

.field private static final PACKAGE_IDX:I = 0x1

.field private static final POLICY_NAME:Ljava/lang/String; = "AppCore"

.field static final TAG:Ljava/lang/String; = "PackageConfigurationController"

.field private static final UPDATE_APPCORE_POLICY:Ljava/lang/String; = "sec.app.policy.UPDATE.AppCore"


# instance fields
.field private final mConfigutations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mForceKillProcess:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRunningPackageNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningPids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mToBeKillProcessList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "content://com.samsung.android.sm.policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/PackageConfigurationControllerImpl;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/server/PackageConfigurationControllerImpl;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "policy_item"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/PackageConfigurationControllerImpl;->ITEM_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mToBeKillProcessList:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mForceKillProcess:Z

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$1;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private enableConventionalModeServer(Ljava/lang/String;F)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalServerRatio(F)V

    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalRatio(F)V

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalMode(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setProcessKillPolicy(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mToBeKillProcessList:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mToBeKillProcessList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public disableConventionalModeInternal(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalRatio(F)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalMode(Z)V

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eq v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public disableFixedAspectRatioForPackage(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setAspectRatio(F)V

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public disableNavbarIsAlwaysEnabled(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setNavbarIsAlwaysEnabled(Z)V

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public disableReducedSideTouchAreaForPackage(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setReducedSideTouchAreaSize(I)V

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public disableScreenAreaForPackage(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setReducedScreenParams(Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;)V

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public declared-synchronized dumpPackageConfiguration(Ljava/io/PrintWriter;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    const-string/jumbo v8, "PackageConfigurationController"

    const-string/jumbo v9, "Package Configuration: "

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedAppScreenParams()Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    move-result-object v5

    if-eqz v5, :cond_1

    iget v7, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->scale:F

    iget v3, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetxPct:F

    iget v4, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetyPct:F

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Pkg Name - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Aspect Ratio : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getAspectRatio()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", NavbarIsAlwaysEnabled :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isNavbarIsAlwaysEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Reduced Touch Area Size :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedSideTouchAreaSize()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Reduced App Screen Params : (xoffsetPct ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", yoffsetPct ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", scale ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "), Conventional Mode :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_2

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v8, "PackageConfigurationController"

    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_3
    monitor-exit p0

    return-void
.end method

.method public enableBackgroundSurfaceForPackage(Ljava/lang/String;Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez p2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setBackgroundSurfaceNeeded(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setBackgroundSurfaceNeeded(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public enableConventionalModeInternal(Ljava/lang/String;F)Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z

    move-result v1

    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalRatio(F)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setConventionalMode(Z)V

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eq v1, v4, :cond_1

    :goto_0
    monitor-exit v3

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public enableFixedAspectRatioForPackage(Ljava/lang/String;F)V
    .locals 2

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableFixedAspectRatioForPackage(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setAspectRatio(F)V

    return-void
.end method

.method public enableNavbarIsAlwaysEnabled(Ljava/lang/String;Z)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableNavbarIsAlwaysEnabled(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setNavbarIsAlwaysEnabled(Z)V

    return-void
.end method

.method public declared-synchronized enableReducedScreenAreaForPackage(Ljava/lang/String;FFF)V
    .locals 3

    monitor-enter p0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableScreenAreaForPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;-><init>(FFF)V

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setReducedScreenParams(Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public enableReducedSideTouchAreaForPackage(Ljava/lang/String;I)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableReducedSideTouchAreaForPackage(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setReducedSideTouchAreaSize(I)V

    return-void
.end method

.method public finishBooting(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.sm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "sec.app.policy.UPDATE.AppCore"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/PackageConfigurationControllerImpl;->updateConventionalModePackage()V

    return-void
.end method

.method public getAspectRatio(I)F
    .locals 3

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getConventionalRatio()F

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getAspectRatio()F

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAspectRatio(Ljava/lang/String;)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/PackageConfigurationControllerImpl;->getAspectRatio(Ljava/lang/String;Z)F

    move-result v0

    return v0
.end method

.method public getAspectRatio(Ljava/lang/String;Z)F
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getConventionalRatio()F

    move-result v1

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getAspectRatio()F

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getReducedAppScreenParams(I)Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedAppScreenParams()Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getReducedAppScreenParams(Ljava/lang/String;)Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedAppScreenParams()Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getReducedSideTouchArea(I)I
    .locals 3

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedSideTouchAreaSize()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getReducedSideTouchArea(Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedSideTouchAreaSize()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServerAspectRatio(Ljava/lang/String;)F
    .locals 3

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getConventionalServerRatio()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isApplicationStarted(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isBackgroundSurfaceNeeded(Ljava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isBackgroundSurfaceNeed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isConventionalMode(Ljava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isConventionalMode()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isNavbarIsAlwaysEnabled(I)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isNavbarIsAlwaysEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNavbarIsAlwaysEnabled(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isNavbarIsAlwaysEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProcessKillPolicy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mForceKillProcess:Z

    return v0
.end method

.method public needProcessKill(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mToBeKillProcessList:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mToBeKillProcessList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public declared-synchronized onApplicationStarted(Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onApplicationStopped(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetPackageConfiguration(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateConventionalModePackage()V
    .locals 11

    const/4 v6, 0x0

    sget-object v2, Lcom/android/server/PackageConfigurationControllerImpl;->ITEM_URI:Landroid/net/Uri;

    const-string/jumbo v3, "AppCore"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string/jumbo v3, "category = \'screenRatio\'"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/android/server/PackageConfigurationControllerImpl;->enableConventionalModeServer(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mToBeKillProcessList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mForceKillProcess:Z

    const-string/jumbo v3, "category = \'processKill\'"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-direct {p0, v8, v10}, Lcom/android/server/PackageConfigurationControllerImpl;->setProcessKillPolicy(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v7

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_3
    :try_start_2
    const-string/jumbo v3, "category = \'killPolicy\'"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    :cond_2
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "android"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mForceKillProcess:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catch_2
    move-exception v7

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_5
    return-void

    :cond_4
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    :cond_6
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    :cond_8
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_2
    move-exception v2

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2
.end method
