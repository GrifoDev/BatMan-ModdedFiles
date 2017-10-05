.class public Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;
.super Ljava/lang/Object;
.source "RemoteConfigurationManager.java"


# static fields
.field private static final GRANT_PERMISSION:Ljava/lang/String; = "com.samsung.android.launcher.permission.WRITE_SETTINGS"

.field private static final MAX_WAIT_DURATION_FOR_WORK_THREAD:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppstate:Lcom/android/launcher3/LauncherAppState;

.field private mCompleteRunnableOnWorkThread:Ljava/lang/Runnable;

.field private mConfigurationLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/android/launcher3/LauncherProviderChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mConfigurationLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mConfigurationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mCompleteRunnableOnWorkThread:Ljava/lang/Runnable;

    return-object p1
.end method

.method private addHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    sget-object v7, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v8, "addHotseatItem"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_2

    sget-object v7, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v8, "addHotseatItem - param is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x4

    :cond_0
    :goto_0
    if-nez v5, :cond_1

    new-instance v2, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    const-string v7, "add_hotseat_item"

    const-wide/16 v8, -0x1

    invoke-direct {v2, v7, p1, v8, v9}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    iget-object v7, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v7

    invoke-virtual {v7, v0, v1, v6}, Lcom/android/launcher3/home/HomeLoader;->addHotseatItemByComponentName(Landroid/content/ComponentName;ILcom/android/launcher3/common/compat/UserHandleCompat;)V

    :cond_1
    const-string v7, "invocation_result"

    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v4

    :cond_2
    const-string v7, "component"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const-string v7, "index"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v7, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v3

    if-eqz v0, :cond_3

    if-ltz v1, :cond_3

    if-lt v1, v3, :cond_0

    :cond_3
    sget-object v7, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addHotseatItem - componentName is null, index is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x4

    goto :goto_0
.end method

.method private addWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 22

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem"

    invoke-static {v4, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const/4 v10, 0x0

    const/16 v9, -0x3e7

    move v8, v9

    move v7, v9

    move v6, v9

    move v5, v9

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v12

    if-nez p1, :cond_0

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem : param is null"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v14, :cond_e

    const/16 v17, -0x4

    :goto_1
    const-string v4, "invocation_result"

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v16

    :cond_0
    const-string v4, "component"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    if-nez v10, :cond_1

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem : componentName is null"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v4, "page"

    const/16 v11, -0x3e7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v4, -0x3e7

    if-ne v5, v4, :cond_2

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem : page index is INVALID"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "coordination_position"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/graphics/Point;

    if-nez v15, :cond_3

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem : position is null"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v6, v15, Landroid/graphics/Point;->x:I

    iget v7, v15, Landroid/graphics/Point;->y:I

    iget-object v4, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    if-ge v6, v4, :cond_4

    if-gez v6, :cond_5

    :cond_4
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWorkspaceItem : cellX is "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v4, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-ge v7, v4, :cond_6

    if-gez v7, :cond_7

    :cond_6
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWorkspaceItem : cellY is "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    if-eqz p2, :cond_d

    const-string v4, "coordination_size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    if-nez v18, :cond_8

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v11, "addWorkspaceItem : size is null"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, v18

    iget v8, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Point;->y:I

    iget-object v4, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    if-gt v8, v4, :cond_9

    const/4 v4, 0x1

    if-ge v8, v4, :cond_a

    :cond_9
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWorkspaceItem : spanX is "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-object v4, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-gt v9, v4, :cond_b

    const/4 v4, 0x1

    if-ge v9, v4, :cond_c

    :cond_b
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWorkspaceItem : spanY is "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v10, v4, v1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->isItemExist(Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_f

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWorkspaceItem : "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v19, " is not exist a on Device"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, -0x3

    goto/16 :goto_1

    :cond_f
    new-instance v13, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    if-eqz p2, :cond_11

    const-string v4, "add_widget"

    :goto_2
    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-direct {v13, v4, v0, v1, v2}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v13, v4}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v4

    move/from16 v11, p2

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/home/HomeLoader;->addOrMoveItem(IIIIILandroid/content/ComponentName;Z)V

    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_11
    const-string v4, "add_shortcut"

    goto :goto_2
.end method

.method private checkPermission()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.launcher.permission.WRITE_SETTINGS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    :goto_1
    if-nez v1, :cond_2

    sget-object v3, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed package name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private findItemByIntent(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAppsButtonState()Landroid/os/Bundle;
    .locals 3

    sget-object v1, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v2, "getAppsButtonState"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "state"

    iget-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private getAppsCellDimension()Landroid/os/Bundle;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    sget-object v3, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v4, "getAppsCellDimension"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    iget-object v3, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    aget v3, v0, v6

    if-eq v3, v5, :cond_0

    aget v3, v0, v7

    if-ne v3, v5, :cond_1

    :cond_0
    const/4 v2, -0x2

    :goto_0
    const-string v3, "invocation_result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_1
    const-string v3, "cols"

    aget v4, v0, v6

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "rows"

    aget v4, v0, v7

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getHomeCellDimension()Landroid/os/Bundle;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    sget-object v3, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v4, "getHomeCellDimension"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    iget-object v3, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    invoke-static {v3, v0, v4}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentGridSize(Landroid/content/Context;[IZ)V

    aget v3, v0, v6

    if-eq v3, v5, :cond_0

    aget v3, v0, v7

    if-ne v3, v5, :cond_1

    :cond_0
    const/4 v2, -0x2

    :goto_0
    const-string v3, "invocation_result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_1
    const-string v3, "cols"

    aget v4, v0, v6

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "rows"

    aget v4, v0, v7

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getHomeMode(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    const/4 v4, 0x1

    const-string v1, "DexHomeConverter"

    const-string v2, "get_home_mode Called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isDeskTopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "persist.service.dex.homesync"

    invoke-static {v1, v4}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dex_need_to_sync"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "easy_mode"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "home_only_mode"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "home_apps_mode"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 19

    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "getHotseatItem"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const/16 v18, 0x0

    const/4 v11, -0x1

    if-nez p1, :cond_3

    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "getHotseatItem - param is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, -0x4

    :cond_0
    :goto_0
    if-nez v18, :cond_2

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "intent"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "profileId"

    aput-object v3, v4, v2

    const-string v5, "screen=? AND container=?"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const/16 v3, -0x65

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_7

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/4 v8, 0x0

    if-eqz v13, :cond_1

    const/4 v2, 0x0

    invoke-static {v13, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    :cond_1
    const-string v2, "component"

    invoke-virtual {v15, v2, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "user_id"

    move-wide/from16 v0, v16

    invoke-virtual {v15, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    const-string v2, "invocation_result"

    move/from16 v0, v18

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v15

    :cond_3
    const-string v2, "index"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v14

    if-ltz v11, :cond_4

    if-lt v11, v14, :cond_0

    :cond_4
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getHotseatItem - index is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, -0x4

    goto/16 :goto_0

    :cond_5
    const/16 v18, -0x3

    goto :goto_1

    :catch_0
    move-exception v10

    const/16 v18, -0x3

    :try_start_1
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    :cond_7
    const/16 v18, -0x3

    goto :goto_2
.end method

.method private getHotseatItemCount()Landroid/os/Bundle;
    .locals 4

    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "getHotseatItemCount"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeLoader;->getHotseatItemCount()I

    move-result v0

    const-string v2, "itemcount"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "invocation_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method private getHotseatMaxItemCount()Landroid/os/Bundle;
    .locals 4

    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "getHotseatMaxItemCount"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v0

    const-string v2, "itemcount"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "invocation_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method private getSupplementServicePageVisibility()Landroid/os/Bundle;
    .locals 7

    const/4 v0, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "getSupplementServicePageVisibility"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->isSupportVirtualScreen()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getEnableZeroPage()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v0

    :goto_0
    if-eqz v3, :cond_1

    const-string v5, "com.sec.android.app.launcher.zeropage.state.prefs"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    const-string v5, "visibility"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "invocation_result"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1
.end method

.method private handleGetMethods(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "is_supported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "get_home_cell_dimension"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "get_apps_cell_dimension"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "get_hotseat_item"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "get_hotseat_item_count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, " get_hotseat_maxitem_count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "get_supplement_service_page_visibility"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "get_apps_button_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->isSupported(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getHomeCellDimension()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getAppsCellDimension()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getHotseatItemCount()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getHotseatMaxItemCount()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getSupplementServicePageVisibility()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :pswitch_7
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getAppsButtonState()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x736ea507 -> :sswitch_4
        -0x51d6cac5 -> :sswitch_6
        -0x4f541027 -> :sswitch_0
        -0x21d4b657 -> :sswitch_3
        -0x9458c40 -> :sswitch_1
        0xf712b51 -> :sswitch_5
        0x639b65cd -> :sswitch_2
        0x6e30d948 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleSetMethods(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_0
    const-string v3, "switch_home_mode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "add_hotseat_item"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v3, "remove_hotseat_item"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "add_widget"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "remove_widget"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "add_shortcut"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "make_empty_position"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "remove_shortcut"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v3, "remove_page_from_home"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v3, "set_supplement_service_page_visibility"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v3, "enable_apps_button"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v3, "disable_apps_button"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->switchHomeMode(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->addHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->removeHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0, p2, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->addWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p2, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->removeWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_5
    invoke-direct {p0, p2, v1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->addWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->makeEmptyPosition(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0, p2, v1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->removeWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->removePageFromHome(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->setSupplementServicePageVisibility(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->setAppsButton(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->setAppsButton(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f03e85e -> :sswitch_3
        -0x89a965f -> :sswitch_7
        0x47563bf -> :sswitch_8
        0x1d08123e -> :sswitch_1
        0x220ebb3b -> :sswitch_2
        0x3e088caf -> :sswitch_9
        0x431cfa4c -> :sswitch_6
        0x5680825f -> :sswitch_4
        0x6cf671b8 -> :sswitch_0
        0x7150ba24 -> :sswitch_5
        0x71587ac8 -> :sswitch_b
        0x75316ce3 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private isCompleteOnWorkThread()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mCompleteRunnableOnWorkThread:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmptyPage(I)Z
    .locals 18

    const-wide/16 v16, -0x1

    const/4 v15, 0x0

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const-string v5, "screenRank=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_1

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEmptyPage : pageId = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v15

    :catch_0
    move-exception v14

    :try_start_1
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    :cond_4
    const-string v5, "container=? AND screen=?"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v10, v5

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_2

    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_5

    const/4 v15, 0x1

    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_5
    const/4 v15, 0x0

    goto :goto_2

    :catch_1
    move-exception v14

    :try_start_3
    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method private isItemExist(Landroid/content/ComponentName;ZZ)Z
    .locals 25

    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "appWidgetProvider"

    aput-object v5, v6, v4

    const-string v7, "appWidgetProvider!=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "null"

    aput-object v5, v8, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_3

    :cond_0
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v17

    :try_start_1
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v22

    if-eqz v22, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x4

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "itemType"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "container"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "intent"

    aput-object v5, v6, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v6

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    if-eqz v16, :cond_3

    :cond_7
    :goto_2
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz p2, :cond_9

    const/16 v4, -0x64

    if-ne v15, v4, :cond_7

    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_8

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v17

    :try_start_3
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x3

    :try_start_4
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->findItemByIntent(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x3

    :try_start_5
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->findItemByIntent(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_a
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_b
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    int-to-long v4, v15

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->findItemByIntent(Landroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_c
    :try_start_7
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v4

    if-nez v4, :cond_b

    :cond_d
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v4
.end method

.method private isSupported(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "isSupported"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method private makeEmptyPosition(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 20

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v18, "makeEmptyPosition"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const/16 v9, -0x3e7

    move v8, v9

    move v7, v9

    move v6, v9

    move v5, v9

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v10

    if-nez p1, :cond_0

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v18, "makeEmptyPosition : param is null"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v13, :cond_c

    const/16 v16, -0x4

    :goto_1
    const-string v4, "invocation_result"

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v15

    :cond_0
    const-string v4, "page"

    const/16 v18, -0x3e7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v4, -0x3e7

    if-ne v5, v4, :cond_1

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v18, "makeEmptyPosition : page index is INVALID"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v4, "coordination_position"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/graphics/Point;

    if-nez v14, :cond_2

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v18, "makeEmptyPosition : position is null"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v6, v14, Landroid/graphics/Point;->x:I

    iget v7, v14, Landroid/graphics/Point;->y:I

    iget-object v4, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    if-ge v6, v4, :cond_3

    if-gez v6, :cond_4

    :cond_3
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "makeEmptyPosition : cellX is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v4, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-ge v7, v4, :cond_5

    if-gez v7, :cond_6

    :cond_5
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "makeEmptyPosition : cellY is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v4, "coordination_size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/graphics/Point;

    if-nez v17, :cond_7

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v18, "makeEmptyPosition : size is null"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Point;->y:I

    iget-object v4, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    if-gt v8, v4, :cond_8

    const/4 v4, 0x1

    if-ge v8, v4, :cond_9

    :cond_8
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "makeEmptyPosition : spanX is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget-object v4, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-gt v9, v4, :cond_a

    const/4 v4, 0x1

    if-ge v9, v4, :cond_b

    :cond_a
    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "makeEmptyPosition : spanY is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v4

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount(Z)I

    move-result v12

    if-lt v5, v12, :cond_d

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "makeEmptyPosition : param value is more than page count removeIndex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " pageCount = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, -0x3

    goto/16 :goto_1

    :cond_d
    new-instance v11, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    const-string v4, "make_empty_position"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-direct {v11, v4, v0, v1, v2}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v11, v4}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v4

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/home/HomeLoader;->removeItemsByPosition(IIIII)V

    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_1
.end method

.method private removeHotseatItem(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removeHotseatItem"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    const/16 v1, -0x3e7

    if-nez p1, :cond_2

    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removeHotseatItem - param is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x4

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    new-instance v2, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    const-string v5, "remove_hotseat_item"

    const-wide/16 v6, -0x1

    invoke-direct {v2, v5, p1, v6, v7}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/launcher3/home/HomeLoader;->removeHotseatItemByIndex(I)V

    :cond_1
    const-string v5, "invocation_result"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_2
    const-string v5, "index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeLoader;->getHotseatItemCount()I

    move-result v0

    if-ltz v1, :cond_3

    if-lt v1, v0, :cond_0

    :cond_3
    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeHotseatItem - index is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x3

    goto :goto_0
.end method

.method private removePageFromHome(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    const/4 v8, 0x1

    const/16 v7, -0x3e7

    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removePageFromHome"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, -0x4

    if-nez p1, :cond_0

    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removePageFromHome : param is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v5, "invocation_result"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_0
    const-string v5, "page"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_1

    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removePageFromHome : param value is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-gez v2, :cond_2

    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removePageFromHome : param value is a negative num"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount(Z)I

    move-result v1

    if-lt v2, v1, :cond_3

    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removePageFromHome : param value is more than page count removeIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pageCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x3

    goto :goto_0

    :cond_3
    if-ne v1, v8, :cond_4

    if-nez v2, :cond_4

    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "removePageFromHome : total page count is 1"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x2

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->isEmptyPage(I)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removePageFromHome : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " page is not empty"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x2

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    const-string v5, "remove_page_from_home"

    const-wide/16 v6, -0x1

    invoke-direct {v0, v5, p1, v6, v7}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher3/home/HomeLoader;->removeScreen(I)V

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private removeWorkspaceItem(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 8

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeWorkspaceItem : isWidget ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "removeWorkspaceItem : param is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const/4 v3, -0x4

    :goto_1
    const-string v4, "invocation_result"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_1
    const-string v4, "component"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-nez v0, :cond_0

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "removeWorkspaceItem : componentName is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p2, :cond_3

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "removeWorkspaceItem : HomeOnlyMode do not support to remove shortcut"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->isItemExist(Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeWorkspaceItem : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not exist on Workspace"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x3

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    if-eqz p2, :cond_6

    const-string v4, "remove_widget"

    :goto_2
    const-wide/16 v6, -0x1

    invoke-direct {v1, v4, p1, v6, v7}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v4

    invoke-virtual {v4, v0, p2}, Lcom/android/launcher3/home/HomeLoader;->removeItem(Landroid/content/ComponentName;Z)V

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const-string v4, "remove_shortcut"

    goto :goto_2
.end method

.method private setAppsButton(ZLjava/lang/String;)Landroid/os/Bundle;
    .locals 6

    const/4 v3, 0x0

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    invoke-static {v4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, -0x2

    :cond_0
    :goto_0
    const-string v3, "invocation_result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_1
    new-instance v0, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    const-wide/16 v4, -0x1

    invoke-direct {v0, p2, v3, v4, v5}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;J)V

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->queueExternalMethodInfo(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->createAppsButton(Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v3

    :cond_2
    invoke-virtual {v4, v5, p1, v3}, Lcom/android/launcher3/LauncherModel;->updateAppsButton(Landroid/content/Context;ZLcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0
.end method

.method private setCompleteRunnableForWait()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager$1;-><init>(Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;)V

    iput-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mCompleteRunnableOnWorkThread:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mCompleteRunnableOnWorkThread:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setSupplementServicePageVisibility(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const/4 v5, 0x0

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "setSupplementServicePageVisibility"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "setSupplementServicePageVisibility : param is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "invocation_result"

    const/4 v5, -0x4

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-object v2

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->isSupportVirtualScreen()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mAppstate:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getEnableZeroPage()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_4

    const-string v4, "visibility"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-interface {v4, v0}, Lcom/android/launcher3/LauncherProviderChangeListener;->onZeroPageActiveChanged(Z)V

    :goto_2
    const-string v4, "invocation_result"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "com.sec.android.app.launcher.zeropage.state.prefs"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v6

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0901e2

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_3

    const-string v4, "1"

    :goto_3
    invoke-virtual {v6, v7, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v4, "0"

    goto :goto_3

    :cond_4
    const-string v4, "invocation_result"

    const/4 v5, -0x2

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private switchHomeMode(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v6, "switchHomeMode"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, -0x4

    if-nez p1, :cond_0

    sget-object v4, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v5, "switchHomeMode : param is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v4, "invocation_result"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_0
    const-string v5, "home_mode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v5, "home_only_mode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_home_screen_mode"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    const-string v5, "pref_home_screen_mode"

    invoke-interface {v4, v5, v3}, Lcom/android/launcher3/LauncherProviderChangeListener;->onSettingsChanged(Ljava/lang/String;Z)V

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_0
    const-string v6, "home_only_mode"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v4

    goto :goto_1

    :sswitch_1
    const-string v6, "home_apps_mode"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v3

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x15809d0a -> :sswitch_0
        0x67df83f0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private waitForWorkThread()Z
    .locals 12

    const-wide/16 v10, 0x3e8

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->isCompleteOnWorkThread()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    :try_start_1
    iget-object v7, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mConfigurationLock:Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    sub-long v4, v8, v2

    cmp-long v7, v4, v10

    if-ltz v7, :cond_0

    :try_start_2
    monitor-exit v6

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v7, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "waitForWorkThread : e = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v1, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "waitForWorkThread : waitingTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleRemoteConfigurationCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v2, v4

    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mCompleteRunnableOnWorkThread:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->handleGetMethods(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->checkPermission()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "invocation_result"

    const/16 v4, -0x64

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->waitForWorkThread()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->TAG:Ljava/lang/String;

    const-string v3, "handleRemoteConfigurationCall : workThread is too busy"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "delay_result"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_3
    return-object v1

    :sswitch_0
    const-string v2, "get_home_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "get_support_feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->getHomeMode(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_3

    :pswitch_1
    const-string v0, "find_app_position"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :cond_2
    move v2, v4

    :goto_4
    packed-switch v2, :pswitch_data_2

    goto :goto_1

    :pswitch_2
    const-string v2, "find_app_position"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :pswitch_3
    const-string v2, "find_app_position"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_4

    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->handleSetMethods(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "invocation_result"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->setCompleteRunnableForWait()V

    goto :goto_2

    :cond_5
    const-string v2, "delay_result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6311f8a6 -> :sswitch_0
        -0x48bf2463 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22836e4d
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public setLauncherProviderChangeListener(Lcom/android/launcher3/LauncherProviderChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    return-void
.end method
