.class public Lcom/android/launcher3/home/ManagedProfileHeuristic;
.super Ljava/lang/Object;
.source "ManagedProfileHeuristic.java"


# static fields
.field private static final AUTO_ADD_TO_FOLDER_DURATION:J = 0x1b77400L

.field private static final TAG:Ljava/lang/String; = "ManagedProfileHeuristic"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHomescreenApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/android/launcher3/LauncherModel;

.field private final mPackageSetKey:Ljava/lang/String;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

.field private final mUserCreationTime:J

.field private final mUserSerial:J

.field private mWorkFolderApps:Ljava/util/ArrayList;
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
.method private constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserCreationTime(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserCreationTime:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getInstalledPackagesPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher.managedusers.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private static addAllUserKeys(JLjava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "home_only_installed_packages_for_user_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installed_packages_for_user_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "home_only_user_folder_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_folder_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private finalizeAdditions(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->finalizeWorkFolder()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method private finalizeWorkFolder()V
    .locals 13

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v12, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/launcher3/home/ManagedProfileHeuristic$1;

    invoke-direct {v8, p0}, Lcom/android/launcher3/home/ManagedProfileHeuristic$1;-><init>(Lcom/android/launcher3/home/ManagedProfileHeuristic;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserFolderIdPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v8, 0x0

    invoke-interface {v7, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/home/HomeLoader;->findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6, v11}, Lcom/android/launcher3/folder/FolderInfo;->hasOption(I)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    iget-object v7, v6, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, v0, v1, v7}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->saveWorkFolderShortcuts(JI)V

    iget-object v5, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/launcher3/util/MainThreadExecutor;

    invoke-direct {v7}, Lcom/android/launcher3/util/MainThreadExecutor;-><init>()V

    new-instance v8, Lcom/android/launcher3/home/ManagedProfileHeuristic$2;

    invoke-direct {v8, p0, v5, v6}, Lcom/android/launcher3/home/ManagedProfileHeuristic$2;-><init>(Lcom/android/launcher3/home/ManagedProfileHeuristic;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderInfo;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    new-instance v6, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v6}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const v8, 0x7f0800ca

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-virtual {v6, v11, v10, v7}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v4, v12}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserFolderIdPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-wide v10, v6, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-interface {v7, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-wide v8, v6, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-direct {p0, v8, v9, v12}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->saveWorkFolderShortcuts(JI)V

    goto/16 :goto_0
.end method

.method public static get(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/home/ManagedProfileHeuristic;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/ManagedProfileHeuristic;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getInstalledPackagesPrefix()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "home_only_installed_packages_for_user_"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "installed_packages_for_user_"

    goto :goto_0
.end method

.method private getUserApps(Ljava/util/HashSet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getUserFolderIdPrefix()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "home_only_user_folder_"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_folder_"

    goto :goto_0
.end method

.method static markExistingUsersForNoFolderCreation(Landroid/content/Context;)V
    .locals 10

    invoke-static {p0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v2, :cond_1

    const-string v6, "com.sec.android.app.launcher.managedusers.prefs"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserFolderIdPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-wide/16 v8, -0x1

    invoke-interface {v6, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private markForAddition(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;J)V
    .locals 6

    iget-wide v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserCreationTime:J

    const-wide/32 v4, 0x1b77400

    add-long/2addr v2, v4

    cmp-long v1, p2, v2

    if-gtz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->fromActivityInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static processAllUsers(Ljava/util/List;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v8

    invoke-static {v8, v9, v5}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->addAllUserKeys(JLjava/util/HashSet;)V

    goto :goto_0

    :cond_0
    const-string v6, "com.sec.android.app.launcher.managedusers.prefs"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveWorkFolderShortcuts(JI)V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    add-int/lit8 v1, p3, 0x1

    iput p3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput-wide p1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget-object v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeLoader;->getUpdater()Lcom/android/launcher3/common/model/DataUpdater;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move p3, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public processPackageAdd([Ljava/lang/String;)V
    .locals 12

    const/4 v10, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v6}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    move-result v7

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v1

    array-length v11, p1

    move v9, v10

    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v5, p1, v9

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    iget-object v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v1, v5, v8}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    invoke-direct {p0, v8, v2, v3}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->markForAddition(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;J)V

    :cond_0
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0, v7}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->finalizeAdditions(Z)V

    :cond_2
    return-void
.end method

.method public processPackageRemoved([Ljava/lang/String;)V
    .locals 6

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    const/4 v1, 0x0

    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p1, v3

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public processUserApps(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    move-result v15

    const/4 v11, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    invoke-virtual {v10}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v13, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    const/4 v2, 0x1

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent LIKE ? AND itemType=0 AND hidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "profileId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x25

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v7, 0x25

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v8, :cond_2

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "ManagedProfileHeuristic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "work app was hided - "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-string v2, "ManagedProfileHeuristic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v12, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    iget-wide v2, v14, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->markForAddition(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->finalizeAdditions(Z)V

    :cond_4
    return-void
.end method
