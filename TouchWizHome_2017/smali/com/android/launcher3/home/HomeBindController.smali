.class public Lcom/android/launcher3/home/HomeBindController;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;


# static fields
.field static final ACTION_FIRST_LOAD_COMPLETE:Ljava/lang/String; = "com.android.launcher3.action.FIRST_LOAD_COMPLETE"

.field static final DEBUG_WIDGETS:Z = false

.field static final FIRST_LOAD_COMPLETE:Ljava/lang/String; = "launcher.first_load_complete"

.field private static NEW_APPS_ANIMATION_DELAY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HomeBindController"

.field public static sFolders:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ADVANCE_MSG:I

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

.field private mHotseat:Lcom/android/launcher3/home/Hotseat;

.field private mHotseatLoading:Z

.field private mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mSynchronouslyBoundPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserPresent:Z

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/android/launcher3/home/Workspace;

.field private mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeBindController;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    const/16 v0, 0x1f4

    sput v0, Lcom/android/launcher3/home/HomeBindController;->NEW_APPS_ANIMATION_DELAY:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeBindController;->mHotseatLoading:Z

    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspaceLoading:Z

    iput v2, p0, Lcom/android/launcher3/home/HomeBindController;->ADVANCE_MSG:I

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/launcher3/home/HomeBindController;->mAdvanceInterval:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/launcher3/home/HomeBindController;->mAdvanceStagger:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceTimeLeft:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceRunning:Z

    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeBindController;->mUserPresent:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/home/HomeBindController$25;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeBindController$25;-><init>(Lcom/android/launcher3/home/HomeBindController;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeBindController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/home/HomeLoader;->registerCallbacks(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->getUpdater()Lcom/android/launcher3/common/model/DataUpdater;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/HomeBindController;)Lcom/android/launcher3/home/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/HomeBindController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/HomeBindController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/HomeBindController;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeBindController;->sendAdvanceMessage(J)V

    return-void
.end method

.method private addAppWidgetToWorkspace(Lcom/android/launcher3/home/LauncherAppWidgetInfo;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V
    .locals 10

    iget-object v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher3/Launcher;Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v1, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->container:J

    iget-wide v4, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    iget v6, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellY:I

    iget v8, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iget v9, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    invoke-virtual {p1}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/home/HomeBindController;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher3/Launcher;)V

    goto :goto_0
.end method

.method private bindHotseatItems(Ljava/util/ArrayList;ZLjava/util/Collection;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z",
            "Ljava/util/Collection",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->resetLayout()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Hotseat;->beginBind(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Invalid Item Type"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    move-object v13, v14

    check-cast v13, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v4, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v8, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v9, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/home/HomeController;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v12, v14

    check-cast v12, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v2, v12}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v2, v12}, Lcom/android/launcher3/folder/folderlock/FolderLock;->markAsLockedFolderWhenBind(Lcom/android/launcher3/folder/FolderInfo;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeBindController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object v4, v14

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v3

    goto :goto_1

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private bindSafeModeWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/android/launcher3/home/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/home/LauncherAppWidgetInfo;Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    iput-object v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    iget-object v1, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/home/HomeBindController;->addAppWidgetToWorkspace(Lcom/android/launcher3/home/LauncherAppWidgetInfo;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->requestLayout()V

    return-void
.end method

.method private deleteWidgetInfo(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isWidgetIdValid()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/launcher3/home/HomeBindController$14;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/home/HomeBindController$14;-><init>(Lcom/android/launcher3/home/HomeBindController;Lcom/android/launcher3/home/LauncherAppWidgetHost;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    sget-object v2, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeBindController$14;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/HomeController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method private sendAdvanceMessage(J)V
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceSentTime:J

    return-void
.end method

.method private sendLoadingCompleteBroadcastIfNecessary()V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "launcher.first_load_complete"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.launcher3.action.FIRST_LOAD_COMPLETE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "launcher.first_load_complete"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method addFolder(Lcom/android/launcher3/common/base/view/CellLayout;JJII)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 22

    new-instance v3, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f090197

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/HomeController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    sget-object v2, Lcom/android/launcher3/home/HomeBindController;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, v3, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    const-wide/16 v4, -0x65

    cmp-long v2, p2, v4

    if-nez v2, :cond_0

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object v6, v3

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move/from16 v18, p6

    move/from16 v19, p7

    invoke-virtual/range {v12 .. v21}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    return-object v13

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3

    if-eqz p2, :cond_0

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    goto :goto_0
.end method

.method public bindAddScreens(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreenBeforeEmptyScreen(J)J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bindAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 17

    new-instance v8, Lcom/android/launcher3/home/HomeBindController$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1}, Lcom/android/launcher3/home/HomeBindController$13;-><init>(Lcom/android/launcher3/home/HomeBindController;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14, v8}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v14

    if-eqz v14, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher3/Launcher;->isSafeModeEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/HomeBindController;->bindSafeModeWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    goto :goto_0

    :cond_1
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v3, 0x0

    :goto_1
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v14, :cond_6

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    :cond_2
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v14, v14, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v14, v14, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v14, v15}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_8

    new-instance v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v15, 0x0

    invoke-direct {v7, v14, v3, v15}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iput v14, v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    iput v14, v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanX:I

    iput v14, v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanY:I

    iput v14, v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v14, v7}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v14}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v14}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v14

    invoke-virtual {v14, v4, v3, v5}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v9

    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v14}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object v14, v3, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v14, :cond_7

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :cond_6
    :goto_3
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v14, :cond_c

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    if-nez v3, :cond_9

    const-string v14, "HomeBindController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Removing invalid widget: id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/HomeBindController;->deleteWidgetInfo(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    goto/16 :goto_0

    :cond_7
    const/4 v14, 0x4

    goto :goto_2

    :cond_8
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v14

    if-eqz v14, :cond_6

    iget-object v14, v3, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v14, :cond_6

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v14}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14, v15, v2, v3}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanX:I

    invoke-virtual {v3}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanY:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/home/HomeBindController;->addAppWidgetToWorkspace(Lcom/android/launcher3/home/LauncherAppWidgetInfo;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSARoundingFeature()Z

    move-result v14

    if-eqz v14, :cond_a

    if-eqz v3, :cond_a

    iget-object v14, v3, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.google.android.googlequicksearchbox"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v14, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsGSB:Z

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v14, "attached-launcher-identifier"

    const-string v15, "samsung-dream-launcher"

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "requested-widget-style"

    const-string v15, "cqsb"

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "widget-screen-bounds-left"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v15}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v14, "widget-screen-bounds-top"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v15}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v14, "widget-screen-bounds-right"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v15}, Landroid/appwidget/AppWidgetHostView;->getRight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v14, "widget-screen-bounds-bottom"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v15}, Landroid/appwidget/AppWidgetHostView;->getBottom()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v14, v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    :cond_a
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v14, :cond_b

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    sget-object v15, Lcom/android/launcher3/Launcher;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v14, v15}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    :cond_b
    :goto_4
    invoke-virtual {v13}, Lcom/android/launcher3/home/Workspace;->requestLayout()V

    goto/16 :goto_0

    :cond_c
    new-instance v12, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v15}, Lcom/android/launcher3/Launcher;->isSafeModeEnabled()Z

    move-result v15

    move-object/from16 v0, p1

    invoke-direct {v12, v14, v0, v15}, Lcom/android/launcher3/home/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/home/LauncherAppWidgetInfo;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v12, v14}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14, v15}, Landroid/appwidget/AppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/launcher3/home/HomeBindController;->addAppWidgetToWorkspace(Lcom/android/launcher3/home/LauncherAppWidgetInfo;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V

    goto :goto_4
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/android/launcher3/home/HomeBindController$19;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeBindController$19;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeBindController;->bindAddScreens(Ljava/util/ArrayList;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, p2, v3, v1, v3}, Lcom/android/launcher3/home/HomeBindController;->bindItems(Ljava/util/ArrayList;IIZ)V

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, p3, v3, v1, v2}, Lcom/android/launcher3/home/HomeBindController;->bindItems(Ljava/util/ArrayList;IIZ)V

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreen()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->onChangeChildState()V

    goto :goto_0
.end method

.method public bindAppsInFolderRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lcom/android/launcher3/home/HomeBindController$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/home/HomeBindController$21;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Lcom/android/launcher3/Utilities;->removeAppsInFolder(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/common/drag/DragManager;->onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public bindComponentsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "I)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/home/HomeBindController$22;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeBindController$22;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p4, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p1, p3}, Lcom/android/launcher3/home/HomeController;->removeItemsByPackageName(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p2, p3}, Lcom/android/launcher3/home/HomeController;->removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/drag/DragManager;->onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->onChangeChildState()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeBindController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v1, p1, p3, p4, v2}, Lcom/android/launcher3/home/HomeController;->disableShortcutsByPackageName(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;ILcom/android/launcher3/common/model/IconCache;)V

    goto :goto_1
.end method

.method public bindFestivalPageIfNecessary()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/home/HomeBindController$23;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HomeBindController$23;-><init>(Lcom/android/launcher3/home/HomeBindController;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/FestivalPageController;->bindFestivalPageIfNecessary()V

    goto :goto_0
.end method

.method public bindFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3

    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/home/HomeController;->getFolderIconView(Lcom/android/launcher3/folder/FolderInfo;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/IconView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bindFolders(Lcom/android/launcher3/util/LongArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/home/HomeBindController$7;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeBindController$7;-><init>(Lcom/android/launcher3/home/HomeBindController;Lcom/android/launcher3/util/LongArrayMap;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->clone()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/home/HomeBindController;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    goto :goto_0
.end method

.method public bindHotseatItems(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/home/HomeBindController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeBindController$1;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResumeForHotseat(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/launcher3/home/HomeBindController;->bindHotseatItems(Ljava/util/ArrayList;ZLjava/util/Collection;)V

    goto :goto_0
.end method

.method public bindInsertScreens(JI)V
    .locals 3

    new-instance v0, Lcom/android/launcher3/home/HomeBindController$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeBindController$6;-><init>(Lcom/android/launcher3/home/HomeBindController;JI)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 p3, p3, 0x1

    :cond_1
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreen(JI)J

    goto :goto_0
.end method

.method public bindItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V
    .locals 29

    new-instance v26, Lcom/android/launcher3/home/HomeBindController$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeBindController$2;-><init>(Lcom/android/launcher3/home/HomeBindController;Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->canRunNewAppsAnimation()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v4, :cond_0

    :cond_2
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid Item Type"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    :pswitch_1
    move-object/from16 v25, p1

    check-cast v25, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v23

    if-eqz v23, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->isOccupied(II)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v28

    if-eqz v28, :cond_4

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collision while binding workspace item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Collides with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v4, "HomeBindController"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v4, "HomeBindController"

    const-string v5, "This item will be bind after change the position"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/HomeLoader;->bindItemAfterChangePosition(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_0

    :cond_4
    const-string v4, "HomeBindController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "child view is null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    const/4 v10, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object/from16 v6, p1

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v9, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v13

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-virtual/range {v12 .. v21}, Lcom/android/launcher3/home/HomeController;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    if-eqz v11, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/view/View;->setAlpha(F)V

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/view/View;->setScaleX(F)V

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/view/View;->setScaleY(F)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v5, 0x0

    invoke-virtual {v4, v13, v5}, Lcom/android/launcher3/home/HomeController;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v22

    new-instance v4, Lcom/android/launcher3/home/HomeBindController$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/android/launcher3/home/HomeBindController$3;-><init>(Lcom/android/launcher3/home/HomeBindController;Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {v22 .. v22}, Landroid/animation/Animator;->start()V

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bindItems(Ljava/util/ArrayList;IIZ)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;IIZ)V"
        }
    .end annotation

    new-instance v4, Lcom/android/launcher3/home/HomeBindController$4;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/home/HomeBindController$4;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;IIZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v16

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->canRunNewAppsAnimation()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v17, 0x1

    :goto_1
    const-wide/16 v26, -0x1

    move/from16 v23, p2

    :goto_2
    move/from16 v0, v23

    move/from16 v1, p3

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v25

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v5, v8, v10

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v5, :cond_1

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid Item Type"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_1
    move-object/from16 v24, v25

    check-cast v24, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, v25

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v5, v8, v10

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v25

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v19

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    :cond_4
    const-string v5, "HomeBindController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindItems item cellXY is -1 : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/item/IconInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-eqz v5, :cond_5

    const-string v5, "HomeBindController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bind hidden item. skip... "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/item/IconInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    if-eqz v19, :cond_8

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->isOccupied(II)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v30

    if-eqz v30, :cond_6

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v29

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Collision while binding workspace item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Collides with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v5, "HomeBindController"

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-string v5, "HomeBindController"

    const-string v6, "This item will be bind after change the position"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/HomeLoader;->bindItemAfterChangePosition(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_3

    :cond_6
    const-string v5, "HomeBindController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "child view is null "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v21, v25

    check-cast v21, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->markAsLockedFolderWhenBind(Lcom/android/launcher3/folder/FolderInfo;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    move-object/from16 v7, v25

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v7

    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v25

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v25

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v25

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v25

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/home/HomeController;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    if-eqz v17, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/view/View;->setAlpha(F)V

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/view/View;->setScaleX(F)V

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move/from16 v0, v23

    invoke-virtual {v5, v7, v0}, Lcom/android/launcher3/home/HomeController;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v26, v0

    goto/16 :goto_3

    :cond_9
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeBindController;->bindHotseatItems(Ljava/util/ArrayList;ZLjava/util/Collection;)V

    if-eqz v17, :cond_a

    const-wide/16 v8, 0x0

    cmp-long v5, v26, v8

    if-gez v5, :cond_a

    const-wide/16 v26, 0x0

    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher3/home/HomeBindController;->mHotseatLoading:Z

    :cond_b
    if-eqz v17, :cond_c

    const-wide/16 v8, -0x1

    cmp-long v5, v26, v8

    if-lez v5, :cond_c

    new-instance v28, Lcom/android/launcher3/home/HomeBindController$5;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeBindController$5;-><init>(Lcom/android/launcher3/home/HomeBindController;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    sget v6, Lcom/android/launcher3/home/HomeBindController;->NEW_APPS_ANIMATION_DELAY:I

    int-to-long v8, v6

    move-object/from16 v0, v28

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/launcher3/home/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->requestLayout()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bindItemsRemoved(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lcom/android/launcher3/home/HomeBindController$17;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/home/HomeBindController$17;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method public bindRemoveScreen(I)V
    .locals 4

    new-instance v0, Lcom/android/launcher3/home/HomeBindController$18;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeBindController$18;-><init>(Lcom/android/launcher3/home/HomeBindController;I)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/launcher3/home/Workspace;->removeScreenWithItem(IZZ)V

    goto :goto_0
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/home/HomeBindController$15;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeBindController$15;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/HashSet;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/HomeController;->updateRestoreItems(Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public bindScreens(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeBindController;->bindAddScreens(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    return-void
.end method

.method public bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    new-instance v2, Lcom/android/launcher3/home/HomeBindController$16;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeBindController$16;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeBindController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v5, p1, v6}, Lcom/android/launcher3/home/HomeController;->updateShortcuts(Ljava/util/ArrayList;Lcom/android/launcher3/common/model/IconCache;)V

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p3, :cond_0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    iget v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->fromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5, v3, p3}, Lcom/android/launcher3/home/HomeController;->removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v3}, Lcom/android/launcher3/common/drag/DragManager;->onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofShortcutKeys(Ljava/util/HashSet;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/home/HomeController;->removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/common/drag/DragManager;->onAppsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    goto :goto_0
.end method

.method public bindUpdateContainer(ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 8

    const-wide/16 v6, -0x1

    new-instance v2, Lcom/android/launcher3/home/HomeBindController$9;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeBindController$9;-><init>(Lcom/android/launcher3/home/HomeBindController;ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/android/launcher3/common/base/item/IconInfo;->getPrevContainer()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-wide v0, p3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-virtual {p3}, Lcom/android/launcher3/common/base/item/IconInfo;->getPrevContainer()J

    move-result-wide v4

    iput-wide v4, p3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3, p3}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p3, v6, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->setPrevContainer(J)V

    iput-wide v0, p3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    :cond_2
    if-eqz p2, :cond_0

    if-eqz p1, :cond_3

    iget-object v3, p2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2, p3}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p3}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0
.end method

.method public bindUpdatePosition(Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v22, Lcom/android/launcher3/home/HomeBindController$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/HomeBindController$8;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/16 v16, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/item/ItemInfo;->getPrevContainer()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/item/ItemInfo;->getPrevContainer()J

    move-result-wide v8

    move-object/from16 v0, v17

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const-wide/16 v8, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher3/common/base/item/ItemInfo;->setPrevContainer(J)V

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v17

    instance-of v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_6

    move-object/from16 v6, v17

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v17

    iget v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/home/HomeController;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    :cond_2
    const-wide/16 v8, -0x1

    move-object/from16 v0, v17

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->oldScreenId:J

    goto :goto_0

    :cond_3
    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->oldScreenId:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_4

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->oldScreenId:J

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->oldScreenId:J

    invoke-virtual {v6, v8, v9}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    move-object v7, v5

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v6, v8, v9}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    move-object/from16 v0, v20

    iget-boolean v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    move-object/from16 v0, v20

    iput-boolean v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    :cond_5
    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    check-cast v12, [[Z

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z

    :cond_6
    move-object/from16 v7, v16

    goto/16 :goto_1
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/home/HomeBindController$20;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeBindController$20;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/HomeController;->widgetsRestored(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method clearWidgetsToAdvance()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04002f

    invoke-virtual {v1, v2, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    :cond_0
    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    goto :goto_0
.end method

.method createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishBindingItems()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Lcom/android/launcher3/home/HomeBindController$10;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeBindController$10;-><init>(Lcom/android/launcher3/home/HomeBindController;)V

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getSavedState()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v8}, Lcom/android/launcher3/Launcher;->setSavedState(Landroid/os/Bundle;)V

    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->restoreInstanceStateForRemainingPages()V

    iget-boolean v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHotseatLoading:Z

    if-eqz v4, :cond_4

    iput-boolean v6, p0, Lcom/android/launcher3/home/HomeBindController;->mHotseatLoading:Z

    :cond_4
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportCustomerDialerChange()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->changeDialerApp()V

    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/HomeBindController;->setWorkspaceLoading(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeBindController;->sendLoadingCompleteBroadcastIfNecessary()V

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getPendingAddItem()Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getPendingAddItem()Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HomeController;->completeAdd(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    new-instance v5, Lcom/android/launcher3/home/HomeBindController$11;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/launcher3/home/HomeBindController$11;-><init>(Lcom/android/launcher3/home/HomeBindController;J)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4, v8}, Lcom/android/launcher3/home/HomeController;->setPendingAddItem(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)V

    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->disableAndFlushExternalQueue()V

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->setDefaultValueForHomeStatusLog(Landroid/content/Context;)V

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/android/launcher3/home/HomeBindController$12;

    invoke-direct {v5, p0}, Lcom/android/launcher3/home/HomeBindController$12;-><init>(Lcom/android/launcher3/home/HomeBindController;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v5

    invoke-virtual {v4, v5, v7}, Lcom/android/launcher3/home/ZeroPageController;->updatePageIndicatorForZeroPage(ZZ)V

    :cond_7
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/drag/DragManager;->setWindowToken(Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isPaused()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->createAndShowSwipeAffordance()V

    goto/16 :goto_0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initFestivalPageIfNecessary()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/home/HomeBindController$24;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HomeBindController$24;-><init>(Lcom/android/launcher3/home/HomeBindController;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/FestivalPageController;->initFestivalPageIfNecessary()V

    goto :goto_0
.end method

.method public isHotseatLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHotseatLoading:Z

    return v0
.end method

.method public isWorkspaceLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspaceLoading:Z

    return v0
.end method

.method public onPageBoundSynchronously(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAdvanceMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method removeAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 7

    iget-object v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeBindController;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "WGDT"

    iget-object v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    :cond_0
    return-void
.end method

.method restoreInstanceState()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->restoreInstanceStateForChild(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUserPresent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeBindController;->mUserPresent:Z

    return-void
.end method

.method public setWorkspaceLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspaceLoading:Z

    return-void
.end method

.method setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/home/Workspace;Lcom/android/launcher3/home/Hotseat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeBindController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    return-void
.end method

.method public startBinding()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeBindController;->setWorkspaceLoading(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getBindOnResumeCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->closeFolder()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->clearDropTargets()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->removeAllWorkspaceScreens()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->abortBindWidgetsAfterConfigChange()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public updateAutoAdvanceState()V
    .locals 12

    const-wide/16 v2, 0x4e20

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher3/home/HomeBindController;->mUserPresent:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceRunning:Z

    if-eq v0, v5, :cond_0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceRunning:Z

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceTimeLeft:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/home/HomeBindController;->sendAdvanceMessage(J)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceTimeLeft:J

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceSentTime:J

    sub-long/2addr v8, v10

    sub-long v8, v2, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceTimeLeft:J

    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method
