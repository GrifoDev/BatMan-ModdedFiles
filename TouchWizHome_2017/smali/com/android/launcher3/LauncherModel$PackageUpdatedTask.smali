.class public Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_SUSPEND:I = 0x5

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UNSUSPEND:I = 0x6

.field public static final OP_UPDATE:I = 0x2

.field public static final OP_USER_AVAILABILITY_CHANGE:I = 0x7


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    # getter for: Lcom/android/launcher3/LauncherModel;->mHasLoaderCompletedOnce:Z
    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$1400(Lcom/android/launcher3/LauncherModel;)Z

    move-result v30

    if-nez v30, :cond_1

    const-string v30, "Launcher.Model"

    const-string v31, "PackageUpdatedTask, Loader is not completed once"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/launcher3/LauncherModel;->sPackageChangeRunnables:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->access$1500()Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    # getter for: Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;
    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$1200(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v5, v0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v17, v0

    :goto_1
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/home/HomeLoader;->getAllAppItemInHome()Ljava/util/ArrayList;

    move-result-object v11

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_0

    :cond_2
    :goto_3
    const/4 v6, 0x0

    const/16 v18, 0x0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->added:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->added:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->added:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    :cond_3
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->modified:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_4

    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->modified:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->modified:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    :cond_4
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->removed:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->removed:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->removed:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v9

    if-nez v9, :cond_c

    const-string v30, "Launcher.Model"

    const-string v31, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    move-object/from16 v17, v0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v11

    goto/16 :goto_2

    :pswitch_0
    const/4 v15, 0x0

    :goto_4
    if-ge v15, v5, :cond_8

    const-string v30, "Launcher.Model"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Loader.addPackage "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    aget-object v32, v20, v15

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    # getter for: Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/common/model/IconCache;
    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$000(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/IconCache;

    move-result-object v30

    aget-object v31, v20, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/android/launcher3/common/model/IconCache;->updateIconsForPkg(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    aget-object v30, v20, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/launcher3/common/model/DataLoader;->updatePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v10, v0}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->get(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/home/ManagedProfileHeuristic;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->processPackageAdd([Ljava/lang/String;)V

    if-eqz v16, :cond_2

    const-string v30, "Launcher.Model"

    const-string v31, "This user package was added by ManagedProfileHeuristic"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->added:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    :pswitch_1
    const/4 v15, 0x0

    :goto_5
    if-ge v15, v5, :cond_2

    const-string v30, "Launcher.Model"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Loader.updatePackage "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    aget-object v32, v20, v15

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    # getter for: Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/common/model/IconCache;
    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$000(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/IconCache;

    move-result-object v30

    aget-object v31, v20, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/android/launcher3/common/model/IconCache;->updateIconsForPkg(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    aget-object v30, v20, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/launcher3/common/model/DataLoader;->updatePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    # getter for: Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;
    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$1200(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    move-result-object v30

    aget-object v31, v20, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v10, v0}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->get(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/home/ManagedProfileHeuristic;

    move-result-object v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->processPackageRemoved([Ljava/lang/String;)V

    :cond_9
    const/4 v15, 0x0

    :goto_6
    if-ge v15, v5, :cond_2

    const-string v30, "Launcher.Model"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Loader.removePackage "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    aget-object v32, v20, v15

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    # getter for: Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/common/model/IconCache;
    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$000(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/IconCache;

    move-result-object v30

    aget-object v31, v20, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/android/launcher3/common/model/IconCache;->removeIconsForPkg(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    aget-object v30, v20, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/launcher3/common/model/DataLoader;->removePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    # getter for: Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;
    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$1200(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    move-result-object v30

    aget-object v31, v20, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :pswitch_3
    const/4 v15, 0x0

    :goto_7
    if-ge v15, v5, :cond_2

    const-string v30, "Launcher.Model"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Loader.disablePackages "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    aget-object v32, v20, v15

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v30, v20, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    const/16 v32, 0x20

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/common/model/DataLoader;->updateUnavailablePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    # getter for: Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;
    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$1200(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    move-result-object v30

    aget-object v31, v20, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    const/16 v30, 0x4

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v12

    :goto_8
    new-instance v30, Ljava/util/HashSet;

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/util/StringFilter;->of(Ljava/util/Set;)Lcom/android/launcher3/util/StringFilter;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/launcher3/home/HomeLoader;->updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/launcher3/allapps/model/AppsLoader;->updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V

    goto/16 :goto_0

    :cond_a
    const/16 v30, 0x4

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v12

    goto :goto_8

    :pswitch_5
    invoke-static {v10}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/launcher3/common/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v30

    if-eqz v30, :cond_b

    const/16 v30, 0x8

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v12

    :goto_9
    invoke-static {}, Lcom/android/launcher3/util/StringFilter;->matchesAll()Lcom/android/launcher3/util/StringFilter;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/launcher3/home/HomeLoader;->updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/launcher3/allapps/model/AppsLoader;->updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V

    goto/16 :goto_0

    :cond_b
    const/16 v30, 0x8

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v12

    goto :goto_9

    :cond_c
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_a
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_d

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_d
    if-eqz v18, :cond_e

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_b
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_e

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_e
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_16

    :cond_f
    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_10
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_11

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_18

    const/16 v25, 0x20

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    move-object/from16 v3, v31

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeLoader;->removePackagesAndComponents(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;I)Ljava/util/ArrayList;

    move-result-object v26

    if-nez v16, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->removePackagesAndComponents(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    :cond_13
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/launcher3/home/HomeLoader;->addOrUpdater([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    if-nez v16, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->addOrUpdater([Ljava/lang/String;Ljava/util/HashMap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_19

    const/4 v15, 0x0

    :goto_d
    if-ge v15, v5, :cond_19

    aget-object v30, v20, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    # invokes: Lcom/android/launcher3/LauncherModel;->isPackageDisabled(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    invoke-static {v10, v0, v1}, Lcom/android/launcher3/LauncherModel;->access$1700(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v30

    if-eqz v30, :cond_15

    aget-object v30, v20, v15

    const-string v31, "com.samsung.android.game.gamehome"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_15

    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager;->getInstance()Lcom/android/launcher3/gamehome/GameHomeManager;

    move-result-object v13

    new-instance v29, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v11}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lcom/android/launcher3/gamehome/GameHomeManager;Ljava/util/ArrayList;)V

    const-string v30, "Launcher.Model"

    const-string v31, "GameHome is disabled, show all game apps"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Lcom/android/launcher3/gamehome/GameHomeManager;->updateGameAppsVisibility(Ljava/lang/Runnable;)V

    :cond_15
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_10

    const/4 v15, 0x0

    :goto_e
    if-ge v15, v5, :cond_10

    aget-object v30, v20, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    # invokes: Lcom/android/launcher3/LauncherModel;->isPackageDisabled(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    invoke-static {v10, v0, v1}, Lcom/android/launcher3/LauncherModel;->access$1700(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v30

    if-eqz v30, :cond_17

    aget-object v30, v20, v15

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    :cond_18
    const/16 v25, 0x0

    goto/16 :goto_c

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1f

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v30, v0

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1b

    const/16 v19, 0x1

    :goto_f
    sget-object v31, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v31

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/HomeLoader;->checkNeedToRefreshWidget([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Z

    move-result v19

    monitor-exit v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v19, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1e

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v33, v0

    const/16 v30, 0x0

    move/from16 v31, v30

    :goto_10
    move/from16 v0, v31

    move/from16 v1, v33

    if-ge v0, v1, :cond_1d

    aget-object v21, v32, v31

    new-instance v30, Landroid/content/Intent;

    const-string v34, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v30

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_1c

    const/16 v30, 0x1

    :goto_11
    or-int v19, v19, v30

    add-int/lit8 v30, v31, 0x1

    move/from16 v31, v30

    goto :goto_10

    :cond_1b
    const/16 v19, 0x0

    goto :goto_f

    :catchall_0
    move-exception v30

    :try_start_1
    monitor-exit v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v30

    :cond_1c
    const/16 v30, 0x0

    goto :goto_11

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    # getter for: Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;
    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$1200(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v24

    if-eqz v24, :cond_1e

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/customer/PostPositionController;->isEnabled()Z

    move-result v30

    if-eqz v30, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    const/16 v30, 0x0

    :goto_12
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_1e

    aget-object v21, v31, v30

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/customer/PostPositionController;->addItem(Ljava/lang/String;Z)V

    add-int/lit8 v30, v30, 0x1

    goto :goto_12

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherModel;->loadWidgetsAndShortcuts([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    # getter for: Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/common/model/DeferredHandler;
    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$900(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/DeferredHandler;

    move-result-object v30

    new-instance v31, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lcom/android/launcher3/LauncherModel$Callbacks;)V

    invoke-virtual/range {v30 .. v31}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
