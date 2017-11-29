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

.field static final OP_SUSPEND:I = 0x5

.field public static final OP_UNAVAILABLE:I = 0x4

.field static final OP_UNSUSPEND:I = 0x6

.field public static final OP_UPDATE:I = 0x2

.field static final OP_USER_AVAILABILITY_CHANGE:I = 0x7


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

.method private checkZeroPageUpdate()V
    .locals 9

    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "Launcher.Model"

    const-string v5, "checkZeroPageUpdate return,  Launcher is probably loading."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const-string v4, "Launcher.Model"

    const-string v5, "checkZeroPageUpdate return, operation is not matched"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSetToZeroPage()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v2, v5, v4

    sget-object v7, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    new-instance v8, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;

    invoke-direct {v8, p0, v0}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lcom/android/launcher3/LauncherModel$Callbacks;)V

    invoke-static {v7, v8}, Lcom/android/launcher3/LauncherModel;->access$2400(Lcom/android/launcher3/LauncherModel;Ljava/lang/Runnable;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$1600(Lcom/android/launcher3/LauncherModel;)Z

    move-result v30

    if-nez v30, :cond_1

    const-string v30, "Launcher.Model"

    const-string v31, "PackageUpdatedTask, Loader is not completed once"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->access$1900()Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->checkZeroPageUpdate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_2

    const-string v30, "Launcher.Model"

    const-string v31, "PackageUpdatedTask, package is empty!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v30, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    const-string v30, "Launcher.Model"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "PackageUpdatedTask, "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " is not exist"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v5, v0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v16, v0

    :goto_1
    if-eqz v15, :cond_9

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

    :cond_4
    :goto_3
    const/4 v6, 0x0

    const/16 v17, 0x0

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->added:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->added:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->added:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    :cond_5
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->modified:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_6

    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->modified:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->modified:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    :cond_6
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->removed:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->removed:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->removed:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v9

    if-nez v9, :cond_e

    const-string v30, "Launcher.Model"

    const-string v31, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    move-object/from16 v16, v0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v11

    goto/16 :goto_2

    :pswitch_0
    const/4 v14, 0x0

    :goto_4
    if-ge v14, v5, :cond_a

    const-string v30, "Launcher.Model"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Loader.addPackage "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    aget-object v32, v20, v14

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$400(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/IconCache;

    move-result-object v30

    aget-object v31, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/android/launcher3/common/model/IconCache;->updateIconsForPkg(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$1000(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/DisableableAppCache;

    move-result-object v30

    aget-object v31, v20, v14

    invoke-virtual/range {v30 .. v31}, Lcom/android/launcher3/common/model/DisableableAppCache;->updateForPkg(Ljava/lang/String;)V

    aget-object v30, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/launcher3/common/model/DataLoader;->updatePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v10, v0}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->get(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/home/ManagedProfileHeuristic;

    move-result-object v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->processPackageAdd([Ljava/lang/String;)V

    if-eqz v15, :cond_4

    const-string v30, "Launcher.Model"

    const-string v31, "This user package was added by ManagedProfileHeuristic"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher3/common/model/DataLoader;->added:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    :pswitch_1
    const/4 v14, 0x0

    :goto_5
    if-ge v14, v5, :cond_4

    const-string v30, "Launcher.Model"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Loader.updatePackage "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    aget-object v32, v20, v14

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$400(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/IconCache;

    move-result-object v30

    aget-object v31, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/android/launcher3/common/model/IconCache;->updateIconsForPkg(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    aget-object v30, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/launcher3/common/model/DataLoader;->updatePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    move-result-object v30

    aget-object v31, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v10, v0}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->get(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/home/ManagedProfileHeuristic;

    move-result-object v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->processPackageRemoved([Ljava/lang/String;)V

    :cond_b
    const/4 v14, 0x0

    :goto_6
    if-ge v14, v5, :cond_4

    const-string v30, "Launcher.Model"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Loader.removePackage "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    aget-object v32, v20, v14

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$400(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/IconCache;

    move-result-object v30

    aget-object v31, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/android/launcher3/common/model/IconCache;->removeIconsForPkg(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    aget-object v30, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/launcher3/common/model/DataLoader;->removePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    move-result-object v30

    aget-object v31, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :pswitch_3
    const/4 v14, 0x0

    :goto_7
    if-ge v14, v5, :cond_4

    const-string v30, "Launcher.Model"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Loader.disablePackages "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    aget-object v32, v20, v14

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v30, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    const/16 v32, 0x20

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/common/model/DataLoader;->updateUnavailablePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    move-result-object v30

    aget-object v31, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

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

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/launcher3/allapps/model/AppsModel;->updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V

    goto/16 :goto_0

    :cond_c
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

    if-eqz v30, :cond_d

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

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/launcher3/allapps/model/AppsModel;->updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V

    goto/16 :goto_0

    :cond_d
    const/16 v30, 0x8

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v12

    goto :goto_9

    :cond_e
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_a
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_f

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_f
    if-eqz v17, :cond_10

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_b
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_10

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_10
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    :cond_11
    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_12
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_13

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_18

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_16

    const/16 v26, 0x20

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_c
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_17

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->updateUnavailablePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    goto :goto_c

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_12

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v5, :cond_12

    aget-object v30, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v10, v0, v1}, Lcom/android/launcher3/LauncherModel;->access$2300(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v30

    if-eqz v30, :cond_15

    aget-object v30, v20, v14

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    :cond_16
    const/16 v26, 0x0

    :cond_17
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

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v31

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeLoader;->removePackagesAndComponents(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;I)Ljava/util/ArrayList;

    move-result-object v27

    if-nez v15, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/model/AppsModel;->removePackagesAndComponents(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1a

    :cond_19
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_1a

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

    if-nez v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/launcher3/allapps/model/AppsModel;->addOrUpdater([Ljava/lang/String;Ljava/util/HashMap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v5, :cond_1c

    aget-object v30, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v10, v0, v1}, Lcom/android/launcher3/LauncherModel;->access$2300(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v30

    if-eqz v30, :cond_1b

    aget-object v30, v20, v14

    const-string v31, "com.samsung.android.game.gamehome"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1b

    const-string v30, "Launcher.Model"

    const-string v31, "GameHome is disabled, show all game apps"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager;->getInstance()Lcom/android/launcher3/gamehome/GameHomeManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/gamehome/GameHomeManager;->resetGameHomeHiddenValue()V

    :cond_1b
    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_24

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1e

    const/4 v14, 0x0

    :goto_f
    if-ge v14, v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v30, v0

    aget-object v31, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/android/launcher3/home/HomeLoader;->removeWidgetIfNeeded(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v30, v0

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1f

    const/16 v18, 0x1

    :goto_10
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

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/HomeLoader;->checkNeedToRefreshWidget([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Z

    move-result v18

    monitor-exit v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v18, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_23

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

    :goto_11
    move/from16 v0, v31

    move/from16 v1, v33

    if-ge v0, v1, :cond_22

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

    if-nez v30, :cond_20

    const/16 v30, 0x1

    :goto_12
    or-int v18, v18, v30

    new-instance v30, Landroid/content/Intent;

    const-string v34, "android.intent.action.CREATE_SHORTCUT"

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

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_21

    const/16 v30, 0x1

    :goto_13
    or-int v18, v18, v30

    add-int/lit8 v30, v31, 0x1

    move/from16 v31, v30

    goto :goto_11

    :cond_1f
    const/16 v18, 0x0

    goto/16 :goto_10

    :catchall_0
    move-exception v30

    :try_start_1
    monitor-exit v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v30

    :cond_20
    const/16 v30, 0x0

    goto :goto_12

    :cond_21
    const/16 v30, 0x0

    goto :goto_13

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v24

    if-eqz v24, :cond_23

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/customer/PostPositionController;->isEnabled()Z

    move-result v30

    if-eqz v30, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    const/16 v30, 0x0

    :goto_14
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_23

    aget-object v21, v31, v30

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/customer/PostPositionController;->addItem(Ljava/lang/String;Z)V

    add-int/lit8 v30, v30, 0x1

    goto :goto_14

    :cond_23
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

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherModel;->loadWidgetsAndShortcuts([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$2100(Lcom/android/launcher3/LauncherModel;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/launcher3/LauncherModel;->access$1300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/DeferredHandler;

    move-result-object v30

    new-instance v31, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;Lcom/android/launcher3/LauncherModel$Callbacks;)V

    invoke-virtual/range {v30 .. v31}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

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
