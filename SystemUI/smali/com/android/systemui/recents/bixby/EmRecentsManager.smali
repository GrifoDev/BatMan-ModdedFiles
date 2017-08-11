.class public Lcom/android/systemui/recents/bixby/EmRecentsManager;
.super Ljava/lang/Object;
.source "EmRecentsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/bixby/EmRecentsManager$1;,
        Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;,
        Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static singleInstance:Lcom/android/systemui/recents/bixby/EmRecentsManager;


# instance fields
.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

.field private mContext:Landroid/content/Context;

.field private mEmSystemUIManager:Lcom/android/systemui/EmSystemUIManager;

.field private mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

.field private mLastParamFillingData:Lcom/samsung/android/sdk/bixby/data/ParamFilling;

.field private mLastScreenStateId:Ljava/lang/String;

.field private mRecentsLaunchedByBixby:Z

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mSystemService:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private mWaitState:Lcom/samsung/android/sdk/bixby/data/State;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/bixby/EmRecentsManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/bixby/EmRecentsManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mLastScreenStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/bixby/EmRecentsManager;Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Lcom/samsung/android/sdk/bixby/data/ParamFilling;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mLastParamFillingData:Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/bixby/EmRecentsManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mRecentsLaunchedByBixby:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/recents/bixby/EmRecentsManager;Lcom/samsung/android/sdk/bixby/data/State;)Lcom/samsung/android/sdk/bixby/data/State;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mWaitState:Lcom/samsung/android/sdk/bixby/data/State;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/bixby/EmRecentsManager;Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->onExit(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/bixby/EmRecentsManager;Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->onLaunchAppDirect(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/recents/bixby/EmRecentsManager;Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->requestToRecentsViewHandler(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/recents/bixby/EmRecentsManager;Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->sendResponseToEM(Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/recents/bixby/EmRecentsManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->updateLastScreenState(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->singleInstance:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/systemui/EmSystemUIManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager$1;-><init>(Lcom/android/systemui/recents/bixby/EmRecentsManager;)V

    iput-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    iput-object p1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mEmSystemUIManager:Lcom/android/systemui/EmSystemUIManager;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mSystemService:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const-string/jumbo v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "Root"

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->updateLastScreenState(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "Recents"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    goto :goto_0
.end method

.method public static createInstance(Landroid/content/Context;Lcom/android/systemui/EmSystemUIManager;)Lcom/android/systemui/recents/bixby/EmRecentsManager;
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;-><init>(Landroid/content/Context;Lcom/android/systemui/EmSystemUIManager;)V

    sput-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->singleInstance:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->singleInstance:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    return-object v0
.end method

.method public static getInstance()Lcom/android/systemui/recents/bixby/EmRecentsManager;
    .locals 2

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->singleInstance:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Instance is null. please invoke createInstance() for the first time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->singleInstance:Lcom/android/systemui/recents/bixby/EmRecentsManager;

    return-object v0
.end method

.method private isDockStackMinimized()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mSystemService:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v6}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v2, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mSystemService:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v1

    sget-object v2, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Check visibility. Recents:%s, Home:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    iget-boolean v5, v0, Landroid/util/MutableBoolean;->value:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    return v6

    :cond_1
    return v7
.end method

.method private launchAppDirect(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 21

    sget-object v17, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "LaunchAppDirect() with \'%s\',\'%s\'"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p1, v19, v20

    const/16 v20, 0x1

    aput-object p2, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v10

    const-string/jumbo v17, "split"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/4 v3, 0x3

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/ActivityOptions;->setDockCreateMode(I)V

    :cond_0
    :goto_0
    invoke-virtual {v10, v3}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v9

    const/16 v6, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mSystemService:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v16

    const/4 v12, -0x1

    :try_start_0
    move/from16 v0, v16

    invoke-interface {v7, v9, v6, v0}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    iget v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    iget v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v3, :cond_2

    iget v12, v13, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_8

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v5

    const/4 v15, 0x0

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mSystemService:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningFullscreenTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    sget-object v18, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Top activity: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_6

    iget-object v0, v15, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v7, v12, v0}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    const-string/jumbo v17, "normal"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    if-eqz v5, :cond_3

    iget-boolean v0, v5, Landroid/app/ActivityManager$StackInfo;->visible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    if-eqz v15, :cond_3

    iget v0, v15, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v12, :cond_3

    sget-object v17, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "#task of fullscreen stack: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "split"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    sget-object v17, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "toggle Recents."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V

    :cond_3
    :goto_3
    const-string/jumbo v17, "normal"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mSystemService:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v17

    if-eqz v17, :cond_9

    sget-object v17, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "Dismiss docked stack for full-screen view."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_4
    const/16 v17, 0x1

    return v17

    :cond_5
    const-string/jumbo v17, "popup"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v3, 0x2

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    goto/16 :goto_0

    :cond_6
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "null, fullscreenStack visible: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-boolean v0, v5, Landroid/app/ActivityManager$StackInfo;->visible:Z

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    :cond_7
    sget-object v17, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "fullscreen stack is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v4

    sget-object v17, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed in LaunchAppDirect: \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\' with multiwindowMode: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v17, 0x0

    return v17

    :cond_8
    :try_start_2
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v18, "android.intent.action.MAIN"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v17

    const-string/jumbo v18, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    const/high16 v18, 0x10200000

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v18

    sget-object v19, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v8, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v17, "split"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->isDockStackMinimized()Z

    move-result v17

    if-eqz v17, :cond_4

    sget-object v17, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "Toggle Recents to show docked stack."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4
.end method

.method public static makeComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "package name is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string/jumbo v3, "_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Incorrect package info parameter\'. num: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cannot be parsed to ComponentName."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v3, 0x0

    aget-object v0, v1, v3

    const/4 v3, 0x1

    aget-object v2, v1, v3

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private onCloseAllApps(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->exitLockTaskEditMode(Z)Z

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v0}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->closeAll()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Fail to close all."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v0

    const-string/jumbo v1, "RecentTask"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v0
.end method

.method private onCloseApp(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->exitLockTaskEditMode(Z)Z

    iget-object v2, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v2}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->getTitleOfFocusedTask()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "RecentTask"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v2, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v2}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->closeFocusedTask()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Fail to close the app."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v2

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SystemUI_3003"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "AppName"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v2

    const-string/jumbo v3, "AppName"

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v2, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v2

    :cond_2
    const-string/jumbo v2, "RecentTask"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    goto :goto_0
.end method

.method private onExit(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SystemUI_3010"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "RecentTask"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mSystemService:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method

.method private onLaunchApp(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "MultiwindowMode"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "modeName_value"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string/jumbo v1, "normal"

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->exitLockTaskEditMode(Z)Z

    const-string/jumbo v5, "SystemUI_3002"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v5}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->getTitleOfFocusedTask()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "AppName"

    invoke-virtual {v3, v5, v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v5, v1}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->launchFocusedTask(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v5}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->getLastErrorNo()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    sget-object v5, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Something is wrong on focusing."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v7}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->getLastErrorNo()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v5

    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    const-string/jumbo v6, "normal"

    invoke-interface {v5, v6}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->launchFocusedTask(Ljava/lang/String;)Z

    const-string/jumbo v5, "Multiwindow"

    const-string/jumbo v6, "Available"

    const-string/jumbo v7, "no"

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v5, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v5

    :cond_4
    const-string/jumbo v5, "Multiwindow"

    const-string/jumbo v6, "Available"

    const-string/jumbo v7, "yes"

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v5, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v5

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
    .end packed-switch
.end method

.method private onLaunchAppDirect(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v13

    const-string/jumbo v14, "AppName"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/bixby/data/Parameter;

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v3, :cond_1

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v13

    const-string/jumbo v14, "AppName"

    const-string/jumbo v15, "Exist"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v13, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v13

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    const-string/jumbo v13, "AppName_value"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v12, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getCHObjects()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/bixby/data/CHObject;

    const-string/jumbo v13, "packageName"

    invoke-virtual {v5}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHValue()Ljava/lang/String;

    move-result-object v12

    :cond_4
    const/4 v8, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v12}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->makeComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v13, v8, v14}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v12, :cond_5

    const-string/jumbo v13, "packageName_value"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v13

    const-string/jumbo v14, "AppName"

    const-string/jumbo v15, "Match"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v13

    const-string/jumbo v14, "AppName"

    invoke-virtual {v13, v14, v2}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v13, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v13

    :catch_0
    move-exception v9

    sget-object v13, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "Failed to parse package name."

    invoke-static {v13, v14, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v12, 0x0

    goto :goto_0

    :cond_6
    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v13

    const-string/jumbo v14, "MultiwindowMode"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v10

    :cond_7
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    const-string/jumbo v13, "modeName_value"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_8
    const-string/jumbo v10, "current"

    :cond_9
    const-string/jumbo v4, "yes"

    const-string/jumbo v13, "normal"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mSystemService:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_a
    iget v13, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v13}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v13

    if-nez v13, :cond_b

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForceResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_b
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->launchAppDirect(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v13

    const-string/jumbo v14, "AppName"

    const-string/jumbo v15, "Match"

    const-string/jumbo v16, "no"

    invoke-virtual/range {v13 .. v16}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v13, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error on launchAppDirect(). Return false"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v13

    :cond_c
    const-string/jumbo v4, "no"

    goto :goto_1

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->updateLastScreenState(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v13

    const-string/jumbo v14, "Multiwindow"

    const-string/jumbo v15, "Available"

    invoke-virtual {v13, v14, v15, v4}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v13

    const-string/jumbo v14, "AppName"

    invoke-virtual {v13, v14, v2}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v13, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v13
.end method

.method private onLockApp(Lcom/samsung/android/sdk/bixby/data/State;Z)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v4}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->getTitleOfFocusedTask()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v4, "RecentTask"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v4, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v4

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "SystemUI_3004"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "SystemUI_3014"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string/jumbo v4, "AppName"

    invoke-virtual {v1, v4, v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    :cond_2
    if-eqz p2, :cond_3

    const-string/jumbo v3, "AlreadyLocked"

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v4, p2}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->setLockFocusedTask(Z)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Fail to lock the app."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v4}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->getLastErrorNo()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    sget-object v4, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Something is wrong on lock app. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v6}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->getLastErrorNo()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v4, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v4

    :cond_3
    const-string/jumbo v3, "AlreadyUnlocked"

    goto :goto_0

    :pswitch_0
    const-string/jumbo v4, "App"

    const-string/jumbo v5, "yes"

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v4, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v4

    :pswitch_1
    sget-object v4, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Applock is not supported."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "App"

    const-string/jumbo v5, "no"

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v4, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onMoveNext(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v0}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->moveToNextTask()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v0

    const-string/jumbo v1, "NextApp"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v0

    const-string/jumbo v1, "NextApp"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v0
.end method

.method private onMovePrev(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v0}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->moveToPrevTask()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v0

    const-string/jumbo v1, "PreviousApp"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v0

    const-string/jumbo v1, "PreviousApp"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v0
.end method

.method private onSelectAppByName(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 14

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v10

    const-string/jumbo v11, "AppName"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getCHObjects()Ljava/util/List;

    move-result-object v6

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    const-string/jumbo v10, "AppName_value"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_1
    iget-object v10, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mLastParamFillingData:Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mLastParamFillingData:Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v10

    const-string/jumbo v11, "AppName"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getCHObjects()Ljava/util/List;

    move-result-object v6

    sget-object v10, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Get appName from paramFilling data: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "AppName_value"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v10

    const-string/jumbo v11, "AppName"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v10, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v10

    :cond_4
    sget-object v10, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Try to find app by the appName user said:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v10, v0}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->focusByAppName(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v10

    :cond_5
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/bixby/data/CHObject;

    const-string/jumbo v10, "packageName"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHValue()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Try to find app by the pkg name:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v9}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->makeComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    iget-object v10, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v10, v7}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->focusByComponentName(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v8

    sget-object v10, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Fail to parse:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_7
    const-string/jumbo v10, "AppName"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHValue()Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Try to find app by the appName of CH value:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v10, v3}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->focusByAppName(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v10

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v10

    const-string/jumbo v11, "AppName"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v10

    const-string/jumbo v11, "AppName"

    invoke-virtual {v10, v11, v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v10, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v10
.end method

.method private onSelectLastApp(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 5

    iget-boolean v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mRecentsLaunchedByBixby:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v1}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->getTaskCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v1, v0}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->focusByIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Fail to focus to latest task."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v1

    const-string/jumbo v2, "RecentTask"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v1

    :cond_1
    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v1
.end method

.method private requestToRecentsViewHandler(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "requestToRecentsViewHandler"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mSystemService:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recents is not visible in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RecentsViewHandler is not attached yet. In state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v2}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->showRecentsView()Z

    iget-object v2, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    invoke-interface {v2}, Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "MovePrevious"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v2

    const-string/jumbo v3, "PreviousApp"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    :goto_0
    sget-object v2, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v2

    :cond_2
    const-string/jumbo v2, "MoveNext"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v2

    const-string/jumbo v3, "NextApp"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v2

    const-string/jumbo v3, "RecentTask"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    const-string/jumbo v2, "SelectLastApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->onSelectLastApp(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    move-result-object v0

    :cond_5
    :goto_1
    return-object v0

    :cond_6
    const-string/jumbo v2, "SelectAppByName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->onSelectAppByName(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-string/jumbo v2, "MovePrevious"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->onMovePrev(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    move-result-object v0

    goto :goto_1

    :cond_8
    const-string/jumbo v2, "MoveNext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->onMoveNext(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    move-result-object v0

    goto :goto_1

    :cond_9
    const-string/jumbo v2, "LaunchApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->updateLastScreenState(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->onLaunchApp(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    move-result-object v0

    goto :goto_1

    :cond_a
    const-string/jumbo v2, "CloseApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->onCloseApp(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    move-result-object v0

    goto :goto_1

    :cond_b
    const-string/jumbo v2, "LockApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->onLockApp(Lcom/samsung/android/sdk/bixby/data/State;Z)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    move-result-object v0

    goto :goto_1

    :cond_c
    const-string/jumbo v2, "UnlockApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->onLockApp(Lcom/samsung/android/sdk/bixby/data/State;Z)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    move-result-object v0

    goto :goto_1

    :cond_d
    const-string/jumbo v2, "CloseAllApps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->onCloseAllApps(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    move-result-object v0

    goto :goto_1
.end method

.method private sendResponseToEM(Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;)V
    .locals 4

    :try_start_0
    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Send response to EM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Fail to send response."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateLastScreenState(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScreenState to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mLastScreenStateId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public activate(Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "Recents"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setActiveApp(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    const-string/jumbo v0, "Recents"

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->updateLastScreenState(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    return-void
.end method

.method public createInterimStateListener()V
    .locals 2

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Prepare for new command."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mWaitState:Lcom/samsung/android/sdk/bixby/data/State;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mRecentsLaunchedByBixby:Z

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "Recents"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setActiveApp(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    return-void
.end method

.method public deactivate()V
    .locals 3

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Deactivate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mEmSystemUIManager:Lcom/android/systemui/EmSystemUIManager;

    iget-object v0, v0, Lcom/android/systemui/EmSystemUIManager;->mBixbyCallback:Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;

    invoke-interface {v0}, Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;->callNotificationManager()V

    const-string/jumbo v0, "Root"

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->updateLastScreenState(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mBixbyRecentsViewHandler:Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mRecentsLaunchedByBixby:Z

    return-void
.end method

.method getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;
    .locals 2

    new-instance v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mLastScreenStateId:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;-><init>(Lcom/android/systemui/recents/bixby/EmRecentsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public handleStartState(Ljava/lang/Object;)V
    .locals 8

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    sget-object v5, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleStartState() stateId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ruleId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v5, "Home"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Root"

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->updateLastScreenState(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->sendResponseToEM(Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;)V

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v5, "Recents"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->updateLastScreenState(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->onOpenRecents(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to handle the state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOpenRecents(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mSystemService:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V

    iput-object p1, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mWaitState:Lcom/samsung/android/sdk/bixby/data/State;

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->NO_RESPONSE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    :cond_1
    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Fail to toggle Recents"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->FAILURE:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    return-object v1
.end method

.method public resumeBixbyRule()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mWaitState:Lcom/samsung/android/sdk/bixby/data/State;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Resume the process of \'Recents\' state."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mRecentsLaunchedByBixby:Z

    iget-object v0, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mWaitState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getNlgBuilder()Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager$NlgBuilder;->send()V

    :cond_0
    iput-object v3, p0, Lcom/android/systemui/recents/bixby/EmRecentsManager;->mWaitState:Lcom/samsung/android/sdk/bixby/data/State;

    sget-object v0, Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;->SUCCESS:Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->sendResponseToEM(Lcom/android/systemui/recents/bixby/EmRecentsManager$Response;)V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
