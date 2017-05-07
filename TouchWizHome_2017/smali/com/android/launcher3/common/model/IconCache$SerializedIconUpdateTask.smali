.class Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;
.super Ljava/lang/Object;
.source "IconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/IconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SerializedIconUpdateTask"
.end annotation


# instance fields
.field private final mAppsToAdd:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppsToUpdate:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSerial:J

.field final synthetic this$0:Lcom/android/launcher3/common/model/IconCache;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/IconCache;JLjava/util/HashMap;Ljava/util/Stack;Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;",
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    iput-wide p2, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    iput-object p4, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    iput-object p6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x1

    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    # invokes: Lcom/android/launcher3/common/model/IconCache;->updateCacheAndGetContentValues(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Z)Landroid/content/ContentValues;
    invoke-static {v5, v0, v12}, Lcom/android/launcher3/common/model/IconCache;->access$100(Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Z)Landroid/content/ContentValues;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    const-string v5, "lastUpdated"

    iget-wide v6, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "version"

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "system_state"

    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    # getter for: Lcom/android/launcher3/common/model/IconCache;->mSystemState:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/launcher3/common/model/IconCache;->access$200(Lcom/android/launcher3/common/model/IconCache;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    # getter for: Lcom/android/launcher3/common/model/IconCache;->mIconDb:Lcom/android/launcher3/common/model/IconCache$IconDB;
    invoke-static {v5}, Lcom/android/launcher3/common/model/IconCache;->access$300(Lcom/android/launcher3/common/model/IconCache;)Lcom/android/launcher3/common/model/IconCache$IconDB;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/model/IconCache$IconDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "icons"

    const-string v7, "componentName = ? AND profileId = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    iget-wide v10, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToUpdate:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    iget-object v7, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    # getter for: Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-static {v7}, Lcom/android/launcher3/common/model/IconCache;->access$400(Lcom/android/launcher3/common/model/IconCache;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    monitor-enter v6

    :try_start_0
    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    # invokes: Lcom/android/launcher3/common/model/IconCache;->isExistIconInDB(Lcom/android/launcher3/util/ComponentKey;)Z
    invoke-static {v5, v1}, Lcom/android/launcher3/common/model/IconCache;->access$500(Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/util/ComponentKey;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    iget-wide v8, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    # invokes: Lcom/android/launcher3/common/model/IconCache;->addIconToDBAndMemCache(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;J)V
    invoke-static {v5, v0, v3, v8, v9}, Lcom/android/launcher3/common/model/IconCache;->access$600(Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/pm/PackageInfo;J)V

    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUpdatedPackages:Ljava/util/HashSet;

    iget-object v7, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    # getter for: Lcom/android/launcher3/common/model/IconCache;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-static {v7}, Lcom/android/launcher3/common/model/IconCache;->access$400(Lcom/android/launcher3/common/model/IconCache;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mUserSerial:J

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    :cond_5
    iget-object v5, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->mAppsToAdd:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public scheduleNext()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache$SerializedIconUpdateTask;->this$0:Lcom/android/launcher3/common/model/IconCache;

    # getter for: Lcom/android/launcher3/common/model/IconCache;->mWorkerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher3/common/model/IconCache;->access$800(Lcom/android/launcher3/common/model/IconCache;)Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/android/launcher3/common/model/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;
    invoke-static {}, Lcom/android/launcher3/common/model/IconCache;->access$700()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method
