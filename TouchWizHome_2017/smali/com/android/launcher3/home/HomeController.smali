.class public Lcom/android/launcher3/home/HomeController;
.super Lcom/android/launcher3/common/stage/Stage;
.source "HomeController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/controller/ControllerBase;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
.implements Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;
.implements Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;
.implements Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;
.implements Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/HomeController$DialerChangeObserver;,
        Lcom/android/launcher3/home/HomeController$State;,
        Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    }
.end annotation


# static fields
.field private static final BOUNCE_ANIMATION_DURATION:I = 0xc8

.field private static final BOUNCE_ANIMATION_TENSION:F = 1.3f

.field private static final ENTER_RESIZE_STATE_DELAY:I = 0xc8

.field private static final EXIT_DRAG_STATE_DELAY:I = 0x64

.field private static final EXIT_SCREEN_GRID_STATE_DELAY:I = 0xc8

.field private static final FIND_OPEN_FOLDER_DELAY:I = 0x12c

.field private static final KEY_PREF_CURRENT_SET_DIALER:Ljava/lang/String; = "current_set_dialer_pref"

.field private static final MAP_NO_RECURSE:Z = false

.field private static final MAP_RECURSE:Z = true

.field private static final NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I = 0x5

.field private static final ON_ACTIVITY_RESULT_ANIMATION_DELAY:I = 0x1f4

.field private static final OPEN_FOLDER_DELAY:I = 0x1f4

.field private static final REQUEST_BIND_APPWIDGET:I = 0xb

.field static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field static final REQUEST_PICK_APPWIDGET:I = 0x9

.field static final REQUEST_PICK_WALLPAPER:I = 0xa

.field static final REQUEST_RECONFIGURE_APPWIDGET:I = 0xc

.field private static final RUNTIME_HOME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_HOME_STATE_PENDING_CELL_X:Ljava/lang/String; = "launcher.add_cell_x"

.field private static final RUNTIME_HOME_STATE_PENDING_CELL_Y:Ljava/lang/String; = "launcher.add_cell_y"

.field private static final RUNTIME_HOME_STATE_PENDING_COMPONENT:Ljava/lang/String; = "launcher.add_component"

.field private static final RUNTIME_HOME_STATE_PENDING_CONTAINER:Ljava/lang/String; = "launcher.add_container"

.field private static final RUNTIME_HOME_STATE_PENDING_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final RUNTIME_HOME_STATE_PENDING_SPAN_X:Ljava/lang/String; = "launcher.add_span_x"

.field private static final RUNTIME_HOME_STATE_PENDING_SPAN_Y:Ljava/lang/String; = "launcher.add_span_y"

.field private static final RUNTIME_HOME_STATE_PENDING_WIDGET_ID:Ljava/lang/String; = "launcher.add_widget_id"

.field private static final RUNTIME_HOME_STATE_PENDING_WIDGET_INFO:Ljava/lang/String; = "launcher.add_widget_info"

.field private static final TAG:Ljava/lang/String; = "Launcher.HomeController"

.field private static sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

.field static sSingleInstanceAppWidgetList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

.field mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

.field private mBlurRunnableHandler:Landroid/os/Handler;

.field private mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

.field private mCaptureListener:Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

.field private mDialerChangeObserver:Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

.field private mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

.field private mEnabledCustomLayoutAnimation:Z

.field private mExitDragStateHandler:Landroid/os/Handler;

.field private mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field private mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

.field private mFindAppPositionHandler:Landroid/os/Handler;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

.field private mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

.field private mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

.field private mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

.field private mHomeDefaultIconClick:Z

.field private mHomeKeyPressed:Z

.field private mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

.field private mHomePageReorder:Z

.field private mHotseat:Lcom/android/launcher3/home/Hotseat;

.field private mHotseatMoveRange:I

.field private mIsStartedTrayEventSetY:Z

.field private mMoveToAppsApproachingEnd:I

.field private mMoveToAppsApproachingStart:I

.field private mMoveToAppsPanelHeight:I

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mOverviewBlurAmount:F

.field private mOverviewDrakenAlpha:F

.field private mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

.field private mPageIndicatorView:Landroid/view/View;

.field private mPageSnapMovingRatioOnHome:F

.field private mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

.field private mPendingAddWidgetId:I

.field private mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

.field private mRestoring:Z

.field private mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

.field private mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

.field private mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

.field private mStartSFinderRatio:F

.field private mState:Lcom/android/launcher3/home/HomeController$State;

.field private mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

.field private mTmpAddItemCellCoordinates:[I

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

.field private mWaitingForResult:Z

.field private mWorkspace:Lcom/android/launcher3/home/Workspace;

.field private mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;-><init>()V

    new-instance v0, Lcom/android/launcher3/home/HomeController$State;

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController$State;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    new-instance v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mTmpAddItemCellCoordinates:[I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFindAppPositionHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBlurRunnableHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDialerChangeObserver:Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeController;->mEnabledCustomLayoutAnimation:Z

    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeController;->mIsStartedTrayEventSetY:Z

    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeController;->mHomePageReorder:Z

    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeDefaultIconClick:Z

    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeKeyPressed:Z

    new-instance v0, Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-direct {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    new-instance v0, Lcom/android/launcher3/home/HomeController$40;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HomeController$40;-><init>(Lcom/android/launcher3/home/HomeController;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mCaptureListener:Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/home/HomeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->callRefreshLiveIcon()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/view/DragLayer;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/home/HomeController;IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 2

    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/home/HomeController;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/LauncherAppWidgetHost;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/ZeroPageController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Hotseat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/launcher3/home/HomeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->changePaddingforScreenGrid()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/tray/TrayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/HomeContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/SwipeAffordance;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/drag/DragManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/HomeController$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    return-object v0
.end method

.method private addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;JJ[I[I)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->resetAddInfo()V

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    move-wide/from16 v0, p2

    iput-wide v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->container:J

    move-wide/from16 v0, p2

    iput-wide v0, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    move-wide/from16 v0, p4

    iput-wide v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->screenId:J

    move-wide/from16 v0, p4

    iput-wide v0, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanX:I

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanY:I

    if-eqz p6, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, 0x0

    aget v5, p6, v5

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, 0x1

    aget v5, p6, v5

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    :cond_0
    if-eqz p7, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, 0x0

    aget v5, p7, v5

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, 0x1

    aget v5, p7, v5

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    :cond_1
    iget-object v10, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v2

    iget-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {p0, v2, p1, v10, v4}, Lcom/android/launcher3/home/HomeController;->addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V

    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    invoke-virtual {v4}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v2

    iget-object v12, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    iget-object v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {v4, v2, v5, v12}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {p0, v2, p1, v4, v5}, Lcom/android/launcher3/home/HomeController;->addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V

    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v3

    const/4 v4, 0x0

    aget v6, p6, v4

    const/4 v4, 0x1

    aget v7, p6, v4

    const/4 v4, 0x0

    aget v8, p7, v4

    const/4 v4, 0x1

    aget v9, p7, v4

    move-wide/from16 v4, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->addToPreservedPosition(JIIII)V

    goto :goto_0

    :cond_3
    iget-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iput-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    new-instance v11, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "appWidgetId"

    invoke-virtual {v11, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "appWidgetProvider"

    iget-object v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v11, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    const-string v5, "appWidgetProviderProfile"

    invoke-virtual {v4, v11, v5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v5, 0xb

    invoke-static {v4, v11, v5}, Lcom/android/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private callRefreshLiveIcon()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->callRefreshLiveIcon()V

    goto :goto_0
.end method

.method private changeItemInfo(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/common/view/IconView;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "Launcher.HomeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeItemInfo item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changeCN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object p2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, p2, v4}, Lcom/android/launcher3/home/HomeLoader;->getBadgeCount(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)I

    move-result v3

    iput v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "intent"

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "title"

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v3, v1, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method private changePaddingforScreenGrid()V
    .locals 8

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeMaxGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getWorkspacePadding(Lcom/android/launcher3/common/deviceprofile/GridInfo;)Landroid/graphics/Rect;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/launcher3/home/Workspace;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getWorkspacePadding(Lcom/android/launcher3/common/deviceprofile/GridInfo;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0
.end method

.method private completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez p7, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object p7

    :cond_0
    move-object/from16 v0, p7

    iget-boolean v2, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v2, :cond_1

    const/16 p1, -0x64

    :cond_1
    new-instance v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move/from16 v0, p1

    invoke-direct {v3, v0, v2}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iput v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iget v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iput v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    iget v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanX:I

    iput v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanX:I

    iget v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanY:I

    iput v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget v8, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v9, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/HomeController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    if-nez v2, :cond_2

    if-nez p6, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    :goto_0
    iget-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    iget-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/android/launcher3/Launcher;)V

    iget-object v5, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v10, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v11, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v12, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iget v13, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    iget-object v4, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p7

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/home/HomeBindController;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->resetAddInfo()V

    iget-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v4, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v4, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    iget-object v4, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "WGAD"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    return-object v2

    :cond_4
    move-object/from16 v0, p6

    iput-object v0, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    iget-object v4, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1
.end method

.method private completeAddShortcut(Landroid/content/Intent;JJII)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeController;->mTmpAddItemCellCoordinates:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v0, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeController;->getCellLayout(JJ)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p1

    invoke-static {v7, v0}, Lcom/android/launcher3/home/InstallShortcutReceiver;->fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v7, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v8, v13, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v9, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/launcher3/Utilities;->hasPermissionForActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "Launcher.HomeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring malicious intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v13, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v7, v13}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v28

    if-ltz p6, :cond_5

    if-ltz p7, :cond_5

    const/4 v7, 0x0

    aput p6, v11, v7

    const/4 v7, 0x1

    aput p7, v11, v7

    const/16 v25, 0x1

    instance-of v7, v6, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v7, :cond_4

    new-instance v24, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v24 .. v24}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, v24

    iput-object v13, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v7

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v7, v11, v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v7

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v11, v0}, Lcom/android/launcher3/home/HotseatDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_3
    :goto_1
    if-nez v25, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->showOutOfSpaceMessage()V

    goto :goto_0

    :cond_4
    new-instance v24, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v24 .. v24}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, v24

    iput-object v13, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v7

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v7, v11, v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v7

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v11, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    :cond_5
    if-eqz v27, :cond_7

    const/4 v7, 0x0

    aget v7, v27, v7

    const/4 v8, 0x1

    aget v8, v27, v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v26

    if-eqz v26, :cond_6

    const/16 v25, 0x1

    :goto_2
    goto :goto_1

    :cond_6
    const/16 v25, 0x0

    goto :goto_2

    :cond_7
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v11, v7, v8, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->findCellForSpan([IIIZ)Z

    move-result v25

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    aget v18, v11, v7

    const/4 v7, 0x1

    aget v19, v11, v7

    move-object/from16 v12, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-virtual/range {v12 .. v19}, Lcom/android/launcher3/home/HomeController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    if-nez v7, :cond_0

    const/4 v7, 0x0

    aget v20, v11, v7

    const/4 v7, 0x1

    aget v21, v11, v7

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v14, p0

    move-object/from16 v15, v28

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    invoke-virtual/range {v14 .. v23}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto/16 :goto_0
.end method

.method private completeRestoreAppWidget(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->getWidgetForAppWidgetId(I)Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "Launcher.HomeController"

    const-string v3, "Widget update called, when the widget no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->reinflateWidgetsIfNecessary()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method private completeTwoStageWidgetDrop(II)V
    .locals 12

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v10, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0, v1, p2, v3}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v8

    move-object v6, v8

    new-instance v4, Lcom/android/launcher3/home/HomeController$9;

    invoke-direct {v4, p0, p2, v8, v2}, Lcom/android/launcher3/home/HomeController$9;-><init>(Lcom/android/launcher3/home/HomeController;ILandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/view/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/drag/DragView;

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    const/4 v5, 0x4

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private createFolder()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v13}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getTargetView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_1

    const-string v13, "Launcher.HomeController"

    const-string v14, "onClickCreateFolder : targetView is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0031

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    :goto_1
    iget-wide v14, v9, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v16, -0x65

    cmp-long v13, v14, v16

    if-nez v13, :cond_3

    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v11

    :goto_3
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v13, v10}, Lcom/android/launcher3/home/Hotseat;->setTargetView(Landroid/view/View;)V

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->removeCheckedAppView(Ljava/util/ArrayList;)V

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v13}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Lcom/android/launcher3/home/HotseatDragController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v4

    :goto_5
    const/4 v13, 0x4

    invoke-virtual {v4, v13}, Lcom/android/launcher3/folder/view/FolderIconView;->setVisibility(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_2
    const/16 v3, 0x1f4

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v14, v9, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    invoke-virtual {v13, v14, v15}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v11

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v13, v10}, Lcom/android/launcher3/home/Workspace;->setTargetView(Landroid/view/View;)V

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Lcom/android/launcher3/home/WorkspaceDragController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v4

    goto :goto_5

    :cond_7
    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->addItems(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v13

    if-eq v11, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v13, v11}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    :cond_8
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v14, Lcom/android/launcher3/home/HomeController$37;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/android/launcher3/home/HomeController$37;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/folder/view/FolderIconView;)V

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_9
    const-string v13, "Launcher.HomeController"

    const-string v14, "onClickCreateFolder : app info is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private ensurePendingDropLayoutExists(J)J
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method private enterNormalState(ZLjava/lang/Runnable;Z)V
    .locals 7

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v2, v6}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    if-nez p3, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901a9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090114

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/home/HomeBindController;->setUserPresent(Z)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_1
.end method

.method private exitScreenGridStateDelayed(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/home/HomeController$38;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeController$38;-><init>(Lcom/android/launcher3/home/HomeController;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private findAppInFolder(Landroid/view/View;Landroid/content/ComponentName;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    const/4 v3, 0x0

    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v5

    if-eq v4, v5, :cond_0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/home/Workspace;->snapToScreenId(J)V

    :cond_0
    iget-object v4, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const-string v4, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {v0, v4, p1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "KEY_FOLDER_ICON_APPSEARCHED"

    invoke-virtual {v0, v4, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mFindAppPositionHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/launcher3/home/HomeController$41;

    invoke-direct {v8, p0, v0}, Lcom/android/launcher3/home/HomeController$41;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/stage/StageEntry;)V

    if-eqz v3, :cond_2

    const-wide/16 v4, 0x3b6

    :goto_1
    invoke-virtual {v7, v8, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x12c

    goto :goto_1

    :cond_3
    return-void
.end method

.method private findEmptyCell([IIZ)J
    .locals 14

    const/4 v11, 0x0

    const/4 v8, 0x0

    move/from16 v10, p2

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v1

    if-ge v10, v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v10}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v9, :cond_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v4

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v5

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getOccupied()[[Z

    move-result-object v6

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v10}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v12

    const-wide/16 v2, -0xc9

    cmp-long v1, v12, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    :cond_2
    if-eqz p3, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findVacantCell([IIIII[[ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    :goto_1
    return-wide v12

    :cond_4
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, p1

    move v7, v11

    invoke-static/range {v1 .. v8}, Lcom/android/launcher3/Utilities;->findVacantCellToRightBottom([IIIII[[ZII)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, p1

    move v7, v11

    invoke-static/range {v1 .. v8}, Lcom/android/launcher3/Utilities;->findVacantCellToLeftTop([IIIII[[ZII)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p1, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, p1, v1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v12

    goto :goto_1
.end method

.method private findSearchedApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, p1, p2}, Lcom/android/launcher3/home/Workspace;->getIconView(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6, p1, p2}, Lcom/android/launcher3/home/Hotseat;->getIconView(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object v5

    :cond_0
    if-nez v5, :cond_4

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeLoader;->getAllAppItemInHome()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v7, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/ItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/ItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v3, v2

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByUser()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v1, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v1}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean v8, v1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iput v8, v1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    const-string v6, "KEY_PICKER_MODE"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "KEY_BOUNCED_ITEM"

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getSearchedApp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "KEY_BOUNCED_ITEM_USER"

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getSearchedAppUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v1}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v9}, Lcom/android/launcher3/Launcher;->setSearchedApp(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v9}, Lcom/android/launcher3/Launcher;->setSearchedAppUser(Landroid/os/UserHandle;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    invoke-virtual {v6, v8, v9}, Lcom/android/launcher3/home/Workspace;->snapToScreenId(J)V

    :cond_5
    invoke-direct {p0, v5}, Lcom/android/launcher3/home/HomeController;->startBounceAnimationForSearchedApp(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v6, :cond_3

    invoke-direct {p0, v5, p1}, Lcom/android/launcher3/home/HomeController;->findAppInFolder(Landroid/view/View;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method private getAdjustedInternalState(I)I
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result p1

    :cond_0
    return p1
.end method

.method private getAllCellLayoutChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/home/HomeController$17;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/home/HomeController$17;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/base/item/ItemOperator;[Landroid/view/View;)V

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    aget-object v1, v0, v2

    return-object v1
.end method

.method private getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTargetView(Ljava/util/ArrayList;)Landroid/view/View;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/16 v17, 0x1

    const/4 v5, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v16, v4, -0x1

    :goto_0
    if-ltz v16, :cond_0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v17, 0x0

    :cond_0
    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const/4 v4, 0x2

    new-array v14, v4, [I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher3/home/HomeController;->findEmptyCell([I)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v15

    const-wide/16 v6, -0x64

    move-object/from16 v0, v19

    iput-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    check-cast v19, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, v19

    invoke-virtual {v4, v15, v0}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v4, 0x0

    aget v4, v14, v4

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    const/4 v4, 0x1

    aget v4, v14, v4

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const-wide/16 v6, -0x64

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v18

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v18

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    :cond_1
    return-object v5

    :cond_2
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_0
.end method

.method private getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayout;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V
    .locals 12

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->getAllCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    invoke-virtual {v1, v8}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v10, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz p1, :cond_3

    instance-of v10, v5, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v10, :cond_3

    instance-of v10, v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v10, :cond_3

    move-object v3, v6

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {p2, v5, v0, v3}, Lcom/android/launcher3/common/base/item/ItemOperator;->evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_2
    return-void

    :cond_3
    const/4 v10, 0x0

    invoke-interface {p2, v5, v6, v10}, Lcom/android/launcher3/common/base/item/ItemOperator;->evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    .locals 4

    new-instance v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeController$PendingAddArguments;-><init>()V

    iput p1, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->requestCode:I

    iput-object p2, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iput-wide v2, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->container:J

    iget-wide v2, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v2, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->screenId:J

    iget v1, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v1, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->cellX:I

    iget v1, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v1, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->cellY:I

    iput p3, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->appWidgetId:I

    return-object v0
.end method

.method private processShortcutFromDrop(Landroid/content/ComponentName;JJ[I)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->resetAddInfo()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide p2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide p4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz p6, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v2, 0x0

    aget v2, p6, v2

    iput v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    aget v2, p6, v3

    iput v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0, v3}, Lcom/android/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method private removeCheckedAppView(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeShortcut()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v1, Lcom/android/launcher3/home/HomeController$35;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/home/HomeController$35;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->removeShortcutAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showToast(I)V

    :cond_0
    return-void
.end method

.method private removeShortcutAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    new-array v5, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v9

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v3, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/16 v5, 0x22

    invoke-static {v5}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v5, v10, [Landroid/animation/PropertyValuesHolder;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_2

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v5, 0x1e

    invoke-static {v5}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/home/HomeController$36;

    invoke-direct {v4, p0, p2}, Lcom/android/launcher3/home/HomeController$36;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startBounceAnimationForSearchedApp(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->animate()V

    goto :goto_0
.end method

.method private startDragEmptyCell()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getTargetView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    new-instance v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    invoke-direct {v1, v3, v2}, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/launcher3/home/HomeController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z

    goto :goto_0
.end method

.method private switchInternalStateChange(II)V
    .locals 7

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x5

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_4

    :cond_2
    if-ne p2, v4, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-ne p1, v3, :cond_f

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/ZeroPageController;->createCustomZeroPage(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->createCustomPlusPage()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->showDefaultHomeIcon(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->checkAlignButtonEnabled()V

    :cond_4
    if-ne p1, v4, :cond_7

    if-eq p2, v1, :cond_5

    if-eq p2, v5, :cond_5

    if-ne p2, v3, :cond_7

    :cond_5
    if-eq p2, v1, :cond_6

    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/HomeController;->removeCustomPage(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mEnabledCustomLayoutAnimation:Z

    if-eqz v0, :cond_10

    if-ne p2, v1, :cond_10

    move v0, v1

    :goto_2
    invoke-virtual {v2, v6, v6, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZ)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mEnabledCustomLayoutAnimation:Z

    if-eqz v0, :cond_11

    if-ne p2, v1, :cond_11

    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/Workspace;->hideDefaultHomeIcon(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne p1, v1, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    :cond_8
    if-ne p2, v1, :cond_12

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/FestivalPageController;->createCustomFestivalPage()V

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->setCrosshairsVisibilityChilds(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->hideHintPages()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    new-instance v2, Lcom/android/launcher3/home/HomeController$32;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/home/HomeController$32;-><init>(Lcom/android/launcher3/home/HomeController;I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenOnDrop(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/home/DropTargetBar;->setDropTargetBarVisible(Z)V

    :cond_a
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->disableAndFlushExternalQueue()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    :cond_b
    :goto_4
    if-eq p2, v5, :cond_c

    const/4 v0, 0x6

    if-eq p2, v0, :cond_c

    if-ne p2, v3, :cond_e

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/home/Workspace;->setCrosshairsVisibilityChilds(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, v6, v6}, Lcom/android/launcher3/home/ZeroPageController;->updatePageIndicatorForZeroPage(ZZ)V

    :cond_d
    if-ne p2, v3, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridPanel;->updateButtonStatus()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    :goto_5
    if-ne p2, v4, :cond_14

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setCrosshairsVisibilityChilds(I)V

    iput-boolean v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeDefaultIconClick:Z

    iput-boolean v6, p0, Lcom/android/launcher3/home/HomeController;->mHomePageReorder:Z

    goto/16 :goto_0

    :cond_f
    move v0, v6

    goto/16 :goto_1

    :cond_10
    move v0, v6

    goto/16 :goto_2

    :cond_11
    move v0, v6

    goto/16 :goto_3

    :cond_12
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/FestivalPageController;->removeCustomFestivalPage()V

    goto :goto_4

    :cond_13
    if-ne p2, v5, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreenOnDrag()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->showHintPages()V

    goto :goto_5

    :cond_14
    if-ne p2, v3, :cond_15

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->changePaddingforScreenGrid()V

    goto/16 :goto_0

    :cond_15
    if-ne p1, v3, :cond_16

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->changePaddingforScreenGrid()V

    goto/16 :goto_0

    :cond_16
    if-ne p1, v4, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeDefaultIconClick:Z

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HDIC"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_17
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mHomePageReorder:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HPRO"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_0
.end method

.method private updateHotseatByMoveToAppsPosition(F)V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/home/HomeController;->mMoveToAppsPanelHeight:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/tray/TrayManager;->getHeightOfTrayForDrag()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/HomeController;->mMoveToAppsPanelHeight:I

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/tray/TrayManager;->getHeightOfTrayForDrag()I

    move-result v2

    int-to-float v2, v2

    div-float v0, p1, v2

    iget v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseatMoveRange:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    neg-float v1, v2

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/home/Hotseat;->setTranslationY(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeController;->addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;I)V

    return-void
.end method

.method addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;I)V
    .locals 13

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iput p1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    const/4 v7, 0x5

    move-object/from16 v3, p4

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    :goto_0
    return-void

    :cond_0
    iget-wide v4, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v6, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object v2, p0

    move v3, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/home/HomeController;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v10

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v4, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v12, Lcom/android/launcher3/home/HomeController$10;

    invoke-direct {v12, p0, v10, v11}, Lcom/android/launcher3/home/HomeController$10;-><init>(Lcom/android/launcher3/home/HomeController;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, p5

    int-to-long v4, v0

    invoke-virtual {v2, v12, v4, v5}, Lcom/android/launcher3/home/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    new-instance v12, Lcom/android/launcher3/home/HomeController$11;

    invoke-direct {v12, p0}, Lcom/android/launcher3/home/HomeController$11;-><init>(Lcom/android/launcher3/home/HomeController;)V

    goto :goto_1
.end method

.method addFolderItemsToDb(Ljava/util/ArrayList;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;J)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide p2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItems(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method addInScreen(Landroid/view/View;JJIIII)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v10

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    return-void
.end method

.method addInScreen(Landroid/view/View;JJIIIIZZ)V
    .locals 22

    const-wide/16 v18, -0x64

    cmp-long v5, p2, v18

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "Launcher.HomeController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping child, screenId "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " not found"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v18, -0xc9

    cmp-long v5, p4, v18

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    const-wide/16 v18, -0x65

    cmp-long v5, p2, v18

    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v15

    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v5, :cond_3

    move-object/from16 v5, p1

    check-cast v5, Lcom/android/launcher3/common/view/IconView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    :cond_3
    sget-object v5, Lcom/android/launcher3/home/HomeFocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-eqz p11, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-wide/from16 v0, p4

    long-to-int v6, v0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Hotseat;->getCellXFromOrder(I)I

    move-result p6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-wide/from16 v0, p4

    long-to-int v6, v0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Hotseat;->getCellYFromOrder(I)I

    move-result p7

    move/from16 v0, p6

    iput v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, p7

    iput v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object v8, v15

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_4

    instance-of v5, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    if-nez v5, :cond_d

    :cond_4
    new-instance v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    :goto_2
    if-gez p8, :cond_5

    if-gez p9, :cond_5

    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v14}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v11

    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher3/folder/view/FolderView;

    if-nez v5, :cond_e

    const/4 v13, 0x1

    :goto_3
    if-eqz p10, :cond_f

    const/4 v10, 0x0

    :goto_4
    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "Launcher.HomeController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to add to item at ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ") to CellLayout"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    invoke-static {v5, v6, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher3/folder/view/FolderView;

    if-nez v5, :cond_7

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_7
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    check-cast p1, Lcom/android/launcher3/common/drag/DropTarget;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v5

    if-nez v5, :cond_10

    instance-of v5, v14, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "HSAD"

    const-string v7, "Folder"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :goto_5
    iget-wide v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x65

    cmp-long v5, v18, v20

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const v6, 0x7f0901b8

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v9, 0x7f0900f1

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v15

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "HSAD"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v8

    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v5, :cond_c

    move-object/from16 v5, p1

    check-cast v5, Lcom/android/launcher3/common/view/IconView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    :cond_c
    sget-object v5, Lcom/android/launcher3/home/HomeFocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1

    :cond_d
    move-object v12, v4

    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    move/from16 v0, p6

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    move/from16 v0, p6

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move/from16 v0, p7

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    move/from16 v0, p7

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move/from16 v0, p8

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v0, p9

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    goto/16 :goto_2

    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v10, -0x1

    goto/16 :goto_4

    :cond_10
    move-object v8, v15

    goto/16 :goto_1
.end method

.method addInScreenFromBind(Landroid/view/View;JJIIII)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    return-void
.end method

.method addItemOnHome(Lcom/android/launcher3/common/base/item/ItemInfo;[IJ)V
    .locals 25

    const-wide/16 v22, -0x64

    const/4 v2, 0x0

    aget v10, p2, v2

    const/4 v2, 0x1

    aget v11, p2, v2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown item type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    if-eqz v21, :cond_0

    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object p1

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v5

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->snapToPageImmediately(I)V

    const-wide/16 v6, -0x64

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v4, p0

    move-wide/from16 v8, p3

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    const-wide/16 v14, -0x64

    const/16 v20, -0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide/from16 v16, p3

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-virtual/range {v12 .. v20}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    if-eqz v21, :cond_1

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v2, :cond_1

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    :cond_1
    return-void

    :pswitch_1
    if-eqz v21, :cond_2

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object p1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J
    .locals 2

    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iput p6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput p7, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x65

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0, p6, p7}, Lcom/android/launcher3/home/Hotseat;->getOrderInHotseat(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iput-wide p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    goto :goto_0
.end method

.method public addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJI)V
    .locals 0

    return-void
.end method

.method public addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V
    .locals 4

    const-wide/16 v2, -0x1

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/home/HomeController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)V

    goto :goto_0
.end method

.method public addOrMoveItems(Ljava/util/ArrayList;JJ)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;JJ)V"
        }
    .end annotation

    move-object/from16 v14, p1

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v20

    if-eqz v20, :cond_5

    const/4 v9, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v21

    if-nez v21, :cond_2

    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x65

    cmp-long v21, v22, v24

    if-nez v21, :cond_3

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    :goto_2
    invoke-virtual {v4, v10}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v22, v0

    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_2

    :cond_4
    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/home/Hotseat;->changeGrid(Z)V

    :cond_5
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    cmp-long v20, v6, p2

    if-eqz v20, :cond_7

    const-wide/16 v22, 0x0

    cmp-long v20, v6, v22

    if-lez v20, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    invoke-virtual {v8, v15}, Lcom/android/launcher3/folder/FolderInfo;->remove(Ljava/util/ArrayList;)V

    :cond_7
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v11, v12

    move-wide/from16 v0, p2

    iput-wide v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-wide/from16 v0, p4

    iput-wide v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v22

    if-nez v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    :cond_8
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    const-string v22, "container"

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v22, "rank"

    iget v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v22, "cellX"

    iget v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v22, "cellY"

    iget v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v22, "screen"

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v22, "hidden"

    iget v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method addPendingItem(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;JJ[III)V
    .locals 8

    iget v0, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x2

    new-array v7, v0, [I

    const/4 v0, 0x0

    aput p7, v7, v0

    const/4 v0, 0x1

    aput p8, v7, v0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/HomeController;->addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;JJ[I[I)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/HomeController;->processShortcutFromDrop(Landroid/content/ComponentName;JJ[I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public addShortcutToHome(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 7

    const/4 v6, 0x2

    new-array v3, v6, [I

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    move v2, v1

    :goto_0
    if-lez v2, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v2}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v3, v2, v6}, Lcom/android/launcher3/home/HomeController;->findEmptyCell([IIZ)J

    move-result-wide v4

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/launcher3/home/HomeController;->addItemOnHome(Lcom/android/launcher3/common/base/item/ItemInfo;[IJ)V

    return-void
.end method

.method applyGridChangeFinally()V
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/ScreenGridHelper;->applyGridChange(I)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/home/Hotseat;->changeGrid(ZZ)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher3/home/HomeController$39;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeController$39;-><init>(Lcom/android/launcher3/home/HomeController;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    return-void
.end method

.method approachBorderOnDrag(F)V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/common/tray/TrayManager;->approachBorderOnDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;F)V

    goto :goto_0
.end method

.method autoAlignItems(ZZ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/HomeController;->autoAlignItems(ZZI)Z

    move-result v0

    return v0
.end method

.method public autoAlignItems(ZZI)Z
    .locals 8

    const/4 v6, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, p3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v0, :cond_3

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/home/AutoAlignHelper;->autoAlignItems(Lcom/android/launcher3/common/base/view/CellLayout;ZZ)Z

    move-result v7

    if-eqz p2, :cond_1

    :goto_0
    return v7

    :cond_1
    if-eqz v7, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->updateItemLocationsInDatabase(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setEnabledOnAlignButton(Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "ATAN"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_3
    move v7, v6

    goto :goto_0
.end method

.method public backupOriginalData()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridHelper;->backupOriginalData()V

    return-void
.end method

.method canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;Z)Z

    move-result v0

    return v0
.end method

.method canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;Z)Z
    .locals 10

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_1
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-nez v2, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSupportedSpans()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSupportedSpans()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode()I

    move-result v3

    :goto_1
    const/4 v7, 0x1

    if-ne v3, v7, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v8

    if-ge v7, v8, :cond_5

    :cond_3
    const/4 v7, 0x2

    if-ne v3, v7, :cond_4

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v8

    if-ge v7, v8, :cond_5

    :cond_4
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v8

    if-lt v7, v8, :cond_7

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v8

    if-lt v7, v8, :cond_7

    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    :cond_6
    iget v3, v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode:I

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_d

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSupportedSpans()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_c

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_8

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    :cond_8
    const/4 v5, 0x0

    const/4 v7, 0x2

    new-array v0, v7, [I

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v8

    aput v8, v0, v7

    const/4 v7, 0x1

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v8

    aput v8, v0, v7

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v8, v4, v1

    aget v9, v0, v1

    if-gt v8, v9, :cond_9

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x1

    goto :goto_2

    :cond_b
    const/4 v7, 0x2

    if-ge v5, v7, :cond_c

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method canMoveHometray()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->isRunningOverviewAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->hasTargetView()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canMoveVertically()Z
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/home/HomeController;->mStartSFinderRatio:F

    mul-float v0, v1, v2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isVerticalScrollWithThreshold(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method canRunNewAppsAnimation()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragManager;->getLastGestureUpTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public cancelGridChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridHelper;->restoreGridLayout()V

    return-void
.end method

.method changeDialerApp()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v27

    const-string v28, "current_set_dialer_pref"

    const/16 v29, -0x1

    invoke-interface/range {v27 .. v29}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "skt_phone20_settings"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v10, v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v27, "current_set_dialer_pref"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    new-instance v12, Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerPackageName()Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerClassName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v24, Landroid/content/ComponentName;

    invoke-static {v9}, Lcom/android/launcher3/LauncherFeature;->getOemDialerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOemDialerClassName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_3

    const-string v27, "Launcher.HomeController"

    const-string v28, "OEM -> T phone app"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v12

    move-object/from16 v5, v24

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildrenAllItems()Ljava/util/ArrayList;

    move-result-object v20

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v22, 0x1

    :goto_2
    if-eqz v22, :cond_7

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_2
    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_6

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v21, v23

    check-cast v21, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v28

    if-eqz v28, :cond_2

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v28

    if-eqz v28, :cond_2

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    const/16 v18, 0x1

    goto :goto_3

    :cond_3
    const-string v27, "Launcher.HomeController"

    const-string v28, "T -> OEM phone app"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v24

    move-object v5, v12

    goto :goto_1

    :cond_4
    const/16 v22, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    const/16 v17, 0x1

    goto :goto_3

    :cond_6
    if-eqz v18, :cond_7

    if-eqz v17, :cond_7

    const-string v27, "Launcher.HomeController"

    const-string v28, "changeDialerApp() - both items are exist in hotseat."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_8
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move/from16 v28, v0

    if-eqz v28, :cond_8

    move-object/from16 v21, v23

    check-cast v21, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v28

    if-eqz v28, :cond_8

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v28

    if-eqz v28, :cond_8

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/home/HomeController;->changeItemInfo(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)V

    const/16 v19, 0x1

    :cond_9
    if-eqz v19, :cond_f

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v27

    if-nez v27, :cond_a

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v26

    invoke-static {v9}, Lcom/android/launcher3/Utilities;->getCustomerPageKey(Landroid/content/Context;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14, v15}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v13

    if-eqz v7, :cond_b

    if-gez v13, :cond_b

    const-string v27, "Launcher.HomeController"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "customer page is not exist. id "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " index "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    :cond_b
    const/16 v25, 0x0

    :goto_5
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    if-eqz v7, :cond_d

    move/from16 v0, v25

    if-eq v0, v13, :cond_d

    :cond_c
    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildrenAllItems()Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_e
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_c

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move/from16 v28, v0

    if-eqz v28, :cond_e

    move-object/from16 v21, v23

    check-cast v21, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v28

    if-eqz v28, :cond_e

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v28

    if-eqz v28, :cond_e

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/home/HomeController;->changeItemInfo(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)V

    goto/16 :goto_0

    :cond_f
    const-string v27, "Launcher.HomeController"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " are not in the hotseat"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method changeGrid(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/home/ScreenGridHelper;->changeGrid(IIZ)V

    return-void
.end method

.method public changeHomeScreenMode(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/home/ZeroPageController;->removeCustomZeroPage(Z)V

    :cond_2
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v3

    invoke-virtual {v3, v5, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/LauncherAppState;->writeHomeOnlyModeEnabled(Z)V

    const/4 v3, 0x2

    new-array v1, v3, [I

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v1}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    aget v4, v1, v4

    aget v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentGrid(II)V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/launcher3/home/HomeController$31;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/home/HomeController$31;-><init>(Lcom/android/launcher3/home/HomeController;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method checkEdgeLightDisplayAvailability()Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v4

    if-ne v4, p0, :cond_0

    move v0, v2

    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isPaused()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v4, v2}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    return v2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method clearDropTargets()V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/android/launcher3/home/HomeController$16;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeController$16;-><init>(Lcom/android/launcher3/home/HomeController;)V

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    return-void
.end method

.method completeAdd(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)J
    .locals 8

    const/4 v6, 0x0

    iget-wide v4, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->screenId:J

    iget-wide v0, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->screenId:J

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->ensurePendingDropLayoutExists(J)J

    move-result-wide v4

    :cond_0
    iget v0, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->requestCode:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->resetAddInfo()V

    return-wide v4

    :sswitch_0
    iget-object v1, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->container:J

    iget v6, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->cellX:I

    iget v7, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/HomeController;->completeAddShortcut(Landroid/content/Intent;JJII)V

    goto :goto_0

    :sswitch_1
    iget v1, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->appWidgetId:I

    iget-wide v2, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->container:J

    move-object v0, p0

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/HomeController;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    goto :goto_0

    :sswitch_2
    iget v0, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->appWidgetId:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->completeRestoreAppWidget(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method createAndShowSwipeAffordance()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->findPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/home/SwipeAffordance;->needToCreateAffordance(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f11009d

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/SwipeAffordance;

    iput-object v1, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/home/SwipeAffordance;->setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/view/PageIndicator;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v1}, Lcom/android/launcher3/home/SwipeAffordance;->startAnim()V

    :cond_0
    return-void
.end method

.method createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, "alpha"

    new-array v3, v4, [F

    aput v6, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "scaleX"

    new-array v3, v4, [F

    aput v6, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "scaleY"

    new-array v4, v4, [F

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    mul-int/lit8 v1, p2, 0x55

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/home/HomeController$18;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/home/HomeController$18;-><init>(Lcom/android/launcher3/home/HomeController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    return-void
.end method

.method public deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method deleteItemInFolderFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteFolderContentsFromDatabase(Lcom/android/launcher3/folder/FolderInfo;)V

    return-void
.end method

.method public determineStageChange(IFFFI)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v0

    :goto_0
    cmpl-float v5, p2, v6

    if-lez v5, :cond_2

    move v1, v4

    :goto_1
    cmpl-float v5, p2, v6

    if-nez v5, :cond_3

    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0901b7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090107

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_b

    const-string v3, "2"

    :goto_3
    invoke-virtual {v4, v5, v6, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v2

    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_7

    cmpg-float v5, p3, p4

    if-gez v5, :cond_4

    if-lez p1, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_5

    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_6

    int-to-float v5, v0

    iget v6, p0, Lcom/android/launcher3/home/HomeController;->mPageSnapMovingRatioOnHome:F

    mul-float/2addr v5, v6

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_6

    :cond_5
    move v2, v4

    :goto_4
    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_4

    :cond_7
    cmpl-float v5, p3, p4

    if-lez v5, :cond_8

    if-gez p1, :cond_8

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_9

    :cond_8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_a

    neg-float v5, p2

    int-to-float v6, v0

    iget v7, p0, Lcom/android/launcher3/home/HomeController;->mPageSnapMovingRatioOnHome:F

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a

    :cond_9
    move v2, v4

    :goto_5
    goto :goto_2

    :cond_a
    move v2, v3

    goto :goto_5

    :cond_b
    const-string v3, "1"

    goto :goto_3
.end method

.method public disableShortcutsByPackageName(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;ILcom/android/launcher3/common/model/IconCache;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "I",
            "Lcom/android/launcher3/common/model/IconCache;",
            ")V"
        }
    .end annotation

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const/4 v8, 0x1

    new-instance v0, Lcom/android/launcher3/home/HomeController$21;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeController$21;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashSet;Lcom/android/launcher3/common/model/IconCache;Ljava/util/ArrayList;)V

    invoke-direct {p0, v8, v0}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->dispatchUnhandledMove(Landroid/view/View;I)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->dispatchUnhandledMove(Landroid/view/View;I)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/lang/Runnable;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method dropCompletedWidgetFromHotseat(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->dropCompletedWidgetFromHotseat(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    return-void
.end method

.method public enableCustomLayoutAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeController;->mEnabledCustomLayoutAnimation:Z

    return-void
.end method

.method public enterDragState(Z)V
    .locals 3

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1, v2}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public enterNormalState(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public enterNormalState(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method enterOverviewState(Z)V
    .locals 7

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "Launcher.HomeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not enterOverviewState : mLauncher.isHomeStage() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isModalState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sScreenGridState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " workspace loading = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWaitingForResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/home/HomeController;->mWaitingForResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isOverviewState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/ZeroPageController;->hasMessages()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/ZeroPageController;->restoreOffset()V

    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOEE"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method enterResizeState(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 8

    new-instance v0, Lcom/android/launcher3/home/HomeController$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/home/HomeController$5;-><init>(Lcom/android/launcher3/home/HomeController;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    int-to-long v2, v1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->setDelayedResizeRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method enterResizeStateDelay(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 1

    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/HomeController;->enterResizeStateDelay(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;I)V

    return-void
.end method

.method enterResizeStateDelay(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;I)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/home/HomeController$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/home/HomeController$4;-><init>(Lcom/android/launcher3/home/HomeController;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public enterScreenGridState(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Launcher.HomeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not enterScreenGridState : isWorkspaceLocked() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean v3, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method enterSelectState(Z)V
    .locals 3

    const/4 v2, 0x6

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1, v2}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public exitDragStateDelayed()V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed(I)V

    return-void
.end method

.method exitDragStateDelayed(I)V
    .locals 6

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    if-ne v1, p0, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher3/home/HomeController$3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeController$3;-><init>(Lcom/android/launcher3/home/HomeController;)V

    int-to-long v4, p1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    goto :goto_0
.end method

.method public exitResizeState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeKeyPressed:Z

    if-eqz v0, :cond_0

    const-string v0, "3"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/home/HomeController;->exitResizeState(ZLjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeKeyPressed:Z

    return-void

    :cond_0
    const-string v0, "4"

    goto :goto_0
.end method

.method public exitResizeState(ZLjava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v3}, Lcom/android/launcher3/common/view/DragLayer;->clearAllResizeFrames()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    const v4, 0x7f0901ba

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090129

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090049

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v7}, Lcom/android/launcher3/Utilities;->changeEdgeHandleState(Landroid/content/Context;Z)V

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    invoke-virtual {v0, v7}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method exitScreenGridStateDelayed()V
    .locals 1

    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->exitScreenGridStateDelayed(I)V

    return-void
.end method

.method public findEmptyCell([I)J
    .locals 6

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    move v2, v1

    :goto_0
    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/launcher3/home/HomeController;->findEmptyCell([IIZ)J

    move-result-wide v4

    return-wide v4
.end method

.method public finishAllStage()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getStackSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    :cond_0
    return-void
.end method

.method public getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getApproachingEndPoint()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/home/HomeController;->mMoveToAppsApproachingEnd:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getApproachingStartPoint()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/home/HomeController;->mMoveToAppsApproachingStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getBackgroundBlurAmountForState(I)F
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getInternalState()I

    move-result p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/launcher3/home/HomeController;->mOverviewBlurAmount:F

    :cond_2
    return v0
.end method

.method protected getBackgroundDimAlphaForState(I)F
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getInternalState()I

    move-result p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/launcher3/home/HomeController;->mOverviewDrakenAlpha:F

    :cond_2
    return v0
.end method

.method protected getBackgroundImageAlphaForState(I)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBindController()Lcom/android/launcher3/home/HomeBindController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    return-object v0
.end method

.method public getCellLayout(JJ)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 3

    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p3, p4}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    goto :goto_0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method public getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v0

    return-object v0
.end method

.method public getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    return-object v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher3/folder/view/FolderView;
    .locals 1

    new-instance v0, Lcom/android/launcher3/home/HomeController$12;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeController$12;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderView;

    return-object v0
.end method

.method public getFolderIconView(Lcom/android/launcher3/folder/FolderInfo;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getFolderItemCount(Ljava/lang/String;)I
    .locals 10

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v9, :cond_2

    if-eqz p1, :cond_2

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_2

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v9, :cond_0

    move-object v4, v8

    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/IconView;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v7
.end method

.method getHomeContainer()Lcom/android/launcher3/home/HomeContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    return-object v0
.end method

.method getHomeLoader()Lcom/android/launcher3/home/HomeLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    return-object v0
.end method

.method public getHomePageIndicatorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    return-object v0
.end method

.method public getHomescreenIconByItemId(J)Landroid/view/View;
    .locals 1

    new-instance v0, Lcom/android/launcher3/home/HomeController$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/home/HomeController$13;-><init>(Lcom/android/launcher3/home/HomeController;J)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHotseat()Lcom/android/launcher3/home/Hotseat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    return-object v0
.end method

.method protected getInternalState()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController$State;->access$1300(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v0

    return v0
.end method

.method getLauncher()Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public getLocationInfoFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    return-object v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v0

    return v0
.end method

.method getPendingAddItem()Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HomeController;->sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    return-object v0
.end method

.method public getScreenDivision()Lcom/android/launcher3/util/event/ScreenDivision;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget-object v0, v0, Lcom/android/launcher3/home/HomeContainer;->mScreenDivision:Lcom/android/launcher3/util/event/ScreenDivision;

    return-object v0
.end method

.method public getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v0

    return v0
.end method

.method public getTrayBgBlurAmount()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .locals 1

    sget-object v0, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    return-object v0
.end method

.method public getTrayScale()F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->getScaleY()F

    move-result v0

    return v0
.end method

.method getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    new-instance v0, Lcom/android/launcher3/home/HomeController$14;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeController$14;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getWidgetForAppWidgetId(I)Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .locals 1

    new-instance v0, Lcom/android/launcher3/home/HomeController$15;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeController$15;-><init>(Lcom/android/launcher3/home/HomeController;I)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    return-object v0
.end method

.method public getWorkspace()Lcom/android/launcher3/home/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method public getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    return-object v0
.end method

.method public hasStartedSFinder()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->hasStartedSFinder()Z

    move-result v0

    return v0
.end method

.method public homeKeyPressed()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeKeyPressed:Z

    :cond_0
    return-void
.end method

.method initBounceAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    :cond_0
    return-void
.end method

.method public initStageView()V
    .locals 12

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeTransitionAnimation;->setupView()V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f1100b4

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/HomeContainer;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/HomeContainer;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeContainer;->setTrayManager(Lcom/android/launcher3/common/tray/TrayManager;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget v7, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v6, v10, v10, v7, v10}, Lcom/android/launcher3/home/HomeContainer;->setPadding(IIII)V

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f11000e

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/Workspace;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/Workspace;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v10}, Lcom/android/launcher3/home/Workspace;->setHapticFeedbackEnabled(Z)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/home/Workspace;->setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->initDefaultHomeIcon()V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Workspace;->setScrollDeterminator(Lcom/android/launcher3/util/event/ScrollDeterminator;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f11000d

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/Hotseat;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/Hotseat;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->resetLayout()V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/Hotseat;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Hotseat;->setup(Lcom/android/launcher3/common/drag/DragManager;)V

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f1100b3

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/DropTargetBar;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/DropTargetBar;->setup(Lcom/android/launcher3/common/drag/DragManager;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f11009b

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/OverviewPanel;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/OverviewPanel;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f11009c

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/ScreenGridPanel;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/ScreenGridPanel;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    new-instance v6, Lcom/android/launcher3/home/ScreenGridHelper;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v6, v7, p0}, Lcom/android/launcher3/home/ScreenGridHelper;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/HomeController;)V

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v6}, Lcom/android/launcher3/home/ScreenGridPanel;->initScreenGridTopContainer()V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f11009a

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeContainer;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v7, v1}, Lcom/android/launcher3/common/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v2, v1

    :cond_2
    new-instance v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v3, v4}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x51

    iput v6, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->gravity:I

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mOverviewBlurAmount:F

    const v6, 0x7f0d0038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mOverviewDrakenAlpha:F

    const v6, 0x7f10000a

    invoke-virtual {v5, v6, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mPageSnapMovingRatioOnHome:F

    const v6, 0x7f0a00f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mMoveToAppsApproachingStart:I

    const v6, 0x7f0a00f2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mMoveToAppsApproachingEnd:I

    const v6, 0x7f0a0150

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseatMoveRange:I

    const v6, 0x7f10000b

    invoke-virtual {v5, v6, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mStartSFinderRatio:F

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher3/home/HomeBindController;->setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/home/Workspace;Lcom/android/launcher3/home/Hotseat;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/ZeroPageController;->setup()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6, v10}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/ZeroPageController;->startZeroPage()V

    :cond_4
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f1100b5

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/EdgeLight;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/EdgeLight;->registerContentObserver(Lcom/android/launcher3/home/HomeController;)V

    :cond_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Lcom/android/launcher3/home/FestivalPageController;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v6, v7, p0}, Lcom/android/launcher3/home/FestivalPageController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/HomeController;)V

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    :cond_7
    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    return-void

    :cond_8
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget v7, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v6, v10, v10, v10, v7}, Lcom/android/launcher3/home/HomeContainer;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method isChangeGridState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridHelper;->isChangeGridState()Z

    move-result v0

    return v0
.end method

.method isHorizontalScoll()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isHorizontalScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 4

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModalState()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMovingOnBlock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isMovingOnBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNormalState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    return v0
.end method

.method public isOverBlurSlop(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getCountTouchMove()I

    move-result v0

    if-le v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOverviewState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    return v0
.end method

.method isReorderAnimating()Z
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->isReorderAnimating()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRestoring()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    return v0
.end method

.method public isScreenGridState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    return v0
.end method

.method public isScrollLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSelectState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    return v0
.end method

.method isStartedSwipeAffordanceAnim()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v0}, Lcom/android/launcher3/home/SwipeAffordance;->isStartedAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSwitchingState()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->isRunningAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isRunningStateChangeAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalScroll()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isVerticalScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleGridPanel()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v1}, Lcom/android/launcher3/home/ScreenGridPanel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v1}, Lcom/android/launcher3/home/ScreenGridPanel;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isWaitingForResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mWaitingForResult:Z

    return v0
.end method

.method isWorkspaceLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)V
    .locals 12

    const/4 v8, -0x1

    const/4 v9, -0x1

    iget v10, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIIII)V

    return-void
.end method

.method modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V
    .locals 12

    iget v10, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIIII)V

    return-void
.end method

.method modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIIII)V
    .locals 10

    iget v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v0, p7

    if-ne v3, v0, :cond_0

    iget v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, p6

    if-eq v3, v0, :cond_1

    :cond_0
    instance-of v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "IWAR"

    const-string v5, "Home_Widget_Longpress"

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_1
    :goto_0
    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move/from16 v0, p6

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, p7

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/4 v3, -0x1

    move/from16 v0, p8

    if-le v0, v3, :cond_2

    const/4 v3, -0x1

    move/from16 v0, p9

    if-le v0, v3, :cond_2

    move/from16 v0, p8

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v0, p9

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-gez v3, :cond_5

    const-wide/16 v4, -0x65

    cmp-long v3, p2, v4

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/home/Hotseat;->getOrderInHotseat(II)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    :goto_1
    move/from16 v0, p10

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "container"

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "cellX"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cellY"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "rank"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "screen"

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "hidden"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, -0x1

    move/from16 v0, p8

    if-le v0, v3, :cond_3

    const/4 v3, -0x1

    move/from16 v0, p9

    if-le v0, v3, :cond_3

    const-string v3, "spanX"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "spanY"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v3, v2, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void

    :cond_4
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "IWAR"

    const-string v5, "Home_Icon_Longpress"

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_0

    :cond_5
    iput-wide p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    goto/16 :goto_1
.end method

.method public modifyItemsInDb(Ljava/util/ArrayList;JI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;JI)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide p2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    if-gez p4, :cond_0

    const-wide/16 v6, -0x65

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/Hotseat;->getOrderInHotseat(II)I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    :goto_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "container"

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "cellX"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "cellY"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "rank"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "screen"

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-long v6, p4

    iput-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6, v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public moveItemFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v3

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/home/HomeLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    const/4 v6, 0x2

    new-array v5, v6, [I

    const-wide/16 v6, -0x64

    iput-wide v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    move v4, v1

    :goto_0
    if-lez v4, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    :cond_2
    invoke-direct {p0, v5, v4, v9}, Lcom/android/launcher3/home/HomeController;->findEmptyCell([IIZ)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    aget v6, v5, v8

    iput v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    aget v6, v5, v9

    iput v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v6, p1, v8}, Lcom/android/launcher3/home/HomeBindController;->bindItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/launcher3/home/HomeController$30;

    invoke-direct {v7, p0, p1}, Lcom/android/launcher3/home/HomeController$30;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/base/item/IconInfo;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public moveOutItemsFromLockedFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v2

    const-string v6, "Launcher.HomeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the folder title of moveoutHomeOrAppsItemsFromLockedFolder is  :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v19

    if-ge v0, v6, :cond_0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    const/4 v6, 0x2

    new-array v3, v6, [I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNearEmptyCell([IJII)Z

    move-result v16

    const-string v6, "Launcher.HomeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " moveout found pos is   :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v16, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount()I

    move-result v21

    const/16 v22, 0x0

    move/from16 v18, v22

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    if-nez v16, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v4

    move/from16 v0, v18

    int-to-long v8, v0

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2

    move/from16 v0, v18

    int-to-long v8, v0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJII)Z

    move-result v16

    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_3
    if-nez v16, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-wide/16 v10, -0x1

    move/from16 v0, v21

    invoke-virtual {v6, v8, v0, v10, v11}, Lcom/android/launcher3/home/HomeLoader;->insertWorkspaceScreen(Landroid/content/Context;IJ)J

    move-result-wide v4

    :cond_4
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x1

    if-ge v6, v8, :cond_5

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, v20

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :goto_2
    const-wide/16 v8, -0x64

    move-object/from16 v0, v20

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, v20

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-object/from16 v0, v20

    iget v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move-object/from16 v0, v20

    iget v13, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v8

    move-object/from16 v0, v20

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    move-object/from16 v0, v20

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, v20

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-object/from16 v0, v20

    iget v14, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object/from16 v8, p0

    move-object/from16 v9, v20

    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher3/home/HomeController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    const-string v6, "Launcher.HomeController"

    const-string v8, "moveoutHomeOrAppsItemsFromLockedFolder Home no ID "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x0

    aget v6, v3, v6

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    const/4 v6, 0x1

    aget v6, v3, v6

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const-string v6, "Launcher.HomeController"

    const-string v8, "moveoutHomeOrAppsItemsFromLockedFolder Home has ID"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public notifyCapture(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/capture/CapturePreview;->notifyCapture(Z)V

    return-void
.end method

.method public notifyCaptureIfNecessary()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-virtual {v0}, Lcom/android/launcher3/util/capture/CapturePreview;->notifyCaptureIfNecessary()V

    return-void
.end method

.method public notifyControllerItemsChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->setWaitingForResult(Z)V

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeController;->requestCreateShortcut(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->clearAnimatedView()V

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeController;->requestCreateOrPickAppWidget(IILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/home/HomeController;->requestBindAppWidget(ILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeController;->requestReconfigureAppWidget(IILandroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_4
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()Z
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v0, v3}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v0, v3}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->isCurrentZeroPage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->startZeroPage()V

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->exitScreenGridStateDelayed()V

    goto :goto_0

    :cond_4
    const-string v0, "1"

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/home/HomeController;->exitResizeState(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onBadgeBindingCompleted(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/home/HomeController$34;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeController$34;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->updateBadgeItems(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onChangeColorForBg(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Hotseat;->changeColorForBg(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->changeColorForBg(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/OverviewPanel;->changeColorForBg(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/DropTargetBar;->changeColorForBg(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/SwipeAffordance;->changeColorForBg(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ZeroPageController;->changeColorForBg(Z)V

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ScreenGridPanel;->changeColorForBg(Z)V

    :cond_2
    return-void
.end method

.method public onChangeSelectMode(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/HomeController;->enterSelectState(Z)V

    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/Talk;->postSay(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearCheckedApps()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v1

    :goto_1
    check-cast v1, Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v2, p1, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addCheckedApp(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;)V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/tray/TrayManager;->isMoving()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    instance-of v4, p1, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    if-eq v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/Workspace;->checkVisibilityOfCustomLayout(I)V

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher3/home/Workspace;->moveToScreen(IZ)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_5

    instance-of v3, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v3

    if-eqz v3, :cond_4

    check-cast p1, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/Launcher;->onClickFolderIcon(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    instance-of v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v3

    if-eqz v3, :cond_6

    instance-of v3, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-nez v3, :cond_0

    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->onClickAppShortcut(Landroid/view/View;)V

    goto :goto_0

    :cond_7
    instance-of v4, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v4

    if-nez v4, :cond_0

    instance-of v4, p1, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isSafeModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f0900ac

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_8
    check-cast p1, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->onClickPendingWidget(Lcom/android/launcher3/home/PendingAppWidgetHostView;)V

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto/16 :goto_0
.end method

.method onClickAppShortcut(Landroid/view/View;)V
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v1, v9, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input must be a Shortcut"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v8, v9

    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6}, Lcom/android/launcher3/Launcher;->showAppsView(ZZ)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    const v2, 0x7f0901b7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f090107

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    if-eqz v1, :cond_2

    iget v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v1, v1, -0x5

    and-int/lit8 v1, v1, -0x9

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOIS"

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_3
    iget-object v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v8, Lcom/android/launcher3/common/base/item/IconInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    const v0, 0x7f090010

    iget v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    const v0, 0x7f0900ab

    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onClickMultiSelectPanel(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_1
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZZ)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->removeShortcut()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->createFolder()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onClickPendingWidget(Lcom/android/launcher3/home/PendingAppWidgetHostView;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v8, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/base/item/ItemInfo;->copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iput v8, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v0

    iget v2, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    const/16 v5, 0xc

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v7}, Lcom/android/launcher3/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, p1, v2, v6}, Lcom/android/launcher3/Utilities;->startActivitySafely(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onConfigurationChangedIfNeeded(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v2, v4, v4, v3, v4}, Lcom/android/launcher3/home/HomeContainer;->setPadding(IIII)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->setScrollZone()V

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HotseatCellLayout;->updateIconViews()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/HomeController;->exitResizeState(Z)V

    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->onConfigurationChangedIfNeeded()V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v2}, Lcom/android/launcher3/home/ScreenGridPanel;->onConfigurationChangedIfNeeded()V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    invoke-virtual {v2}, Lcom/android/launcher3/home/OverviewPanel;->onConfigurationChangedIfNeeded()V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->onConfigurationChangedIfNeeded()V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    invoke-virtual {v2}, Lcom/android/launcher3/home/DropTargetBar;->onConfigurationChangedIfNeeded()V

    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/android/launcher3/home/HomeContainer;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onDestroyActivity()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/FestivalPageController;->onDestroy()V

    :cond_0
    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/tray/TrayManager;->removeTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->clearWidgetsToAdvance()V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->removeAllWorkspaceScreens()V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/ZeroPageController;->onDestroy()V

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->removeFolderLockActionCallback(Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;)V

    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_7
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFindAppPositionHandler:Landroid/os/Handler;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFindAppPositionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->resetBlurRunnable()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->unregisterOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->unregisterOnLiveIconUpdateLisnter(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V

    :cond_9
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportCustomerDialerChange()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDialerChangeObserver:Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_a
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v1}, Lcom/android/launcher3/home/EdgeLight;->unregisterContentObserver()V

    :cond_b
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-virtual {v1}, Lcom/android/launcher3/util/capture/CapturePreview;->stopCapture()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 12

    const v11, 0x7f0901b7

    const v10, 0x7f090149

    const v9, 0xc369

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/TrayManager;->isMoving()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v6}, Lcom/android/launcher3/util/event/ScrollDeterminator;->cancelLongPressOnHScroll()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_0
    return v8

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    instance-of v6, p1, Lcom/android/launcher3/home/Workspace;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->isTouchActive()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v9, v7}, Lcom/android/launcher3/home/Workspace;->performHapticFeedback(II)Z

    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v6

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2"

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    goto :goto_0

    :cond_3
    instance-of v6, p1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->hasTargetView()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-nez v6, :cond_1

    :cond_5
    const/4 v1, 0x1

    instance-of v6, p1, Lcom/android/launcher3/home/AppWidgetResizeFrame;

    if-eqz v6, :cond_6

    check-cast p1, Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {p1}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getResizeWidgetView()Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-result-object p1

    const/4 v1, 0x0

    :cond_6
    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_7

    const-string v6, "Launcher.HomeController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "v\'s getParent() is null, v screenID = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    new-instance v4, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    invoke-direct {v4, p1, v2}, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iget-object v3, v4, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->resetAddInfo()V

    :cond_8
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v6

    if-nez v6, :cond_9

    if-nez v3, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v6

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v8, p1}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v8

    if-ne v6, v8, :cond_9

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, p1}, Lcom/android/launcher3/home/Workspace;->startReordering(Landroid/view/View;)Z

    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeController;->mHomePageReorder:Z

    :cond_9
    :goto_1
    move v8, v7

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->startDragEmptyCell()V

    goto :goto_1

    :cond_b
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v9, v7}, Lcom/android/launcher3/home/Workspace;->performHapticFeedback(II)Z

    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v6

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2"

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    instance-of v6, v3, Lcom/android/launcher3/folder/view/FolderView;

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->canLongClick(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    invoke-virtual {p0, v4, v8, v8}, Lcom/android/launcher3/home/HomeController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    goto :goto_1

    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v6

    if-nez v6, :cond_e

    move v0, v7

    :goto_2
    invoke-virtual {p0, v4, v0, v8}, Lcom/android/launcher3/home/HomeController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    goto :goto_1

    :cond_e
    move v0, v8

    goto :goto_2
.end method

.method public onPauseActivity()V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/HomeController;->exitResizeState(Z)V

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v2, v6}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    if-ne v2, p0, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isSkipAnim()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->onPause()V

    return-void
.end method

.method public onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V
    .locals 13

    const/4 v3, 0x2

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget v11, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mEventType:I

    packed-switch v11, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v11, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v11}, Lcom/android/launcher3/home/HomeContainer;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v11, v10}, Lcom/android/launcher3/home/HomeContainer;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v10, v12}, Lcom/android/launcher3/home/HomeContainer;->setAlpha(F)V

    :cond_1
    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v10, v9}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    goto :goto_0

    :pswitch_2
    iget v9, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    float-to-int v7, v9

    if-ne v7, v3, :cond_2

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Lcom/android/launcher3/home/HomeContainer;->setVisibility(I)V

    :cond_2
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherModel;->flushPendingQueue()V

    goto :goto_0

    :pswitch_3
    iget v8, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    iget-object v11, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v11, v8}, Lcom/android/launcher3/home/HomeContainer;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-boolean v11, p0, Lcom/android/launcher3/home/HomeController;->mIsStartedTrayEventSetY:Z

    if-nez v11, :cond_3

    cmpl-float v11, v8, v12

    if-eqz v11, :cond_3

    iput-boolean v9, p0, Lcom/android/launcher3/home/HomeController;->mIsStartedTrayEventSetY:Z

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    goto :goto_0

    :pswitch_4
    iget v9, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v10}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float v0, v9, v10

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v9}, Lcom/android/launcher3/home/HomeContainer;->getTranslationY()F

    move-result v9

    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v10}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float v1, v9, v10

    cmpg-float v9, v0, v1

    if-gez v9, :cond_4

    sub-float v9, v1, v0

    invoke-direct {p0, v9}, Lcom/android/launcher3/home/HomeController;->updateHotseatByMoveToAppsPosition(F)V

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v9}, Lcom/android/launcher3/home/Hotseat;->getTranslationY()F

    move-result v9

    cmpl-float v9, v9, v12

    if-eqz v9, :cond_0

    invoke-direct {p0, v12}, Lcom/android/launcher3/home/HomeController;->updateHotseatByMoveToAppsPosition(F)V

    goto/16 :goto_0

    :pswitch_5
    iput-boolean v10, p0, Lcom/android/launcher3/home/HomeController;->mIsStartedTrayEventSetY:Z

    iget v10, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    float-to-int v6, v10

    if-lez v6, :cond_6

    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/launcher3/common/stage/StageManager;->startStageByTray(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/launcher3/common/stage/StageManager;->startStageByTray(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    iget-object v11, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v11

    invoke-virtual {v10, v9, v11}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getTrayReturnAnimation(ZZ)Landroid/animation/Animator;

    move-result-object v5

    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v10

    if-eqz v10, :cond_7

    move v3, v9

    :cond_7
    if-nez v5, :cond_8

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/launcher3/common/tray/TrayManager;->trayMoveEnd(I)V

    goto/16 :goto_0

    :cond_8
    new-instance v9, Lcom/android/launcher3/home/HomeController$33;

    invoke-direct {v9, p0, v3}, Lcom/android/launcher3/home/HomeController$33;-><init>(Lcom/android/launcher3/home/HomeController;I)V

    invoke-virtual {v5, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    goto/16 :goto_0

    :pswitch_6
    iget v11, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_9

    move v4, v9

    :goto_1
    if-eqz v4, :cond_a

    invoke-virtual {p0, v10, v9}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZZ)V

    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreen()V

    new-instance v2, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean v9, v2, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    invoke-virtual {v2, v9}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    const-string v10, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v10, v9}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v9

    invoke-virtual {v9, v3, v2}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_0

    :cond_9
    move v4, v10

    goto :goto_1

    :cond_a
    new-instance v2, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean v9, v2, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    :goto_2
    const-string v10, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v10, v9}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v2, v9}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onRefreshLiveIcon()V
    .locals 5

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getWorkspaceScreens()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->updateLiveIcon(Lcom/android/launcher3/common/base/view/CellLayout;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeController;->updateLiveIcon(Lcom/android/launcher3/common/base/view/CellLayout;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeBindController;->restoreInstanceState()V

    return-void
.end method

.method public onResumeActivity()V
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->reinflateWidgetsIfNecessary()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v8

    if-ne v8, p0, :cond_8

    move v4, v6

    :goto_0
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->isSkipAnim()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v8, v6}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v8}, Lcom/android/launcher3/home/SwipeAffordance;->startAnim()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->setup(Lcom/android/launcher3/common/base/view/PagedView;)V

    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher3/home/Workspace;->onResume()V

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v8, v6}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v6}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->startEdgeLight()V

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    const-string v6, "GATE"

    const-string v8, "<GATE-M>SCREEN_LOADED_HOME</GATE-M>"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v4, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v8, 0x4

    invoke-static {v6, v8}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v6

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeLoader;->clearPreservedPosition()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getSearchedApp()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getSearchedApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_6
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6, v5}, Lcom/android/launcher3/Utilities;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getSearchedAppUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/android/launcher3/home/HomeController;->findSearchedApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v10}, Lcom/android/launcher3/Launcher;->setSearchedApp(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v10}, Lcom/android/launcher3/Launcher;->setSearchedAppUser(Landroid/os/UserHandle;)V

    :cond_7
    const-string v6, "Launcher.HomeController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResume HomeContainer current alpha = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeContainer;->getAlpha()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    move v4, v7

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "launcher.current_screen"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPageOffsetFromCustomContent()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    const-string v0, "launcher.add_container"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "launcher.add_screen"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "launcher.add_cell_x"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "launcher.add_cell_y"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "launcher.add_span_x"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "launcher.add_span_y"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "launcher.add_component"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "launcher.add_widget_info"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "launcher.add_widget_id"

    iget v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onSetPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->setPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V

    return-void
.end method

.method protected onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/drag/DragManager;->setDragScroller(Lcom/android/launcher3/common/drag/DragScroller;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/drag/DragManager;->setMoveTarget(Landroid/view/View;)V

    const/4 v10, 0x0

    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    const-string v2, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_8

    const/16 v19, 0x1

    :goto_0
    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/tray/TrayManager;->setSuppressChangeStageOnce()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->setVisibility(I)V

    const/4 v2, 0x2

    if-ne v15, v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v10

    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/DropTargetBar;->setDropTargetBarVisible(Z)V

    :cond_1
    const/4 v2, 0x4

    if-ne v14, v2, :cond_2

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_9

    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090049

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    :cond_5
    :goto_1
    if-eqz v10, :cond_6

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/common/stage/StageEntry;->broughtToHome:Z

    if-eqz v2, :cond_6

    const-wide/16 v4, 0x1e

    invoke-virtual {v10, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v2

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->notifyCaptureIfNecessary()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->startEdgeLight()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->callRefreshLiveIcon()V

    return-object v10

    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090049

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x5

    if-eq v15, v2, :cond_b

    const/4 v2, 0x6

    if-ne v15, v2, :cond_13

    :cond_b
    const-string v2, "KEY_FOLDER_ICON_VIEW"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v8}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeContainer;->getTranslationY()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_c
    move-object v10, v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v14

    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    if-eqz v2, :cond_d

    const/4 v2, 0x5

    if-ne v15, v2, :cond_d

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/common/stage/StageEntry;->stageCountOnFinishAllStage:I

    const/4 v4, 0x2

    if-le v2, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/DropTargetBar;->setDropTargetBarVisible(Z)V

    :cond_d
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    :cond_e
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    :cond_f
    const/4 v2, 0x6

    if-ne v15, v2, :cond_11

    const-string v2, "KEY_ITEMS_TO_HIDE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    const-string v2, "KEY_ITEMS_TO_SHOW"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    if-eqz v16, :cond_10

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/Launcher;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_10
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_12

    const/4 v2, 0x4

    if-ne v14, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)V

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/android/launcher3/home/HomeController;->switchInternalStateChange(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromAppsPickerAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object v10, v9

    :cond_11
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    goto/16 :goto_1

    :cond_12
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_11

    move-object v10, v9

    goto :goto_3

    :cond_13
    const/4 v2, 0x3

    if-eq v15, v2, :cond_14

    const/4 v2, 0x4

    if-ne v15, v2, :cond_5

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)V

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/android/launcher3/home/HomeController;->switchInternalStateChange(II)V

    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/DropTargetBar;->setDropTargetBarVisible(Z)V

    :cond_15
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v4, v3, v0, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromWidgetsAnimation(ZLjava/util/HashMap;Z)Landroid/animation/Animator;

    move-result-object v10

    goto :goto_4

    :cond_17
    const/4 v2, 0x0

    goto :goto_5

    :cond_18
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_2
.end method

.method protected onStageEnterByTray()Landroid/animation/Animator;
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/home/HomeController$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeController$2;-><init>(Lcom/android/launcher3/home/HomeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method protected onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->closeDialog(Landroid/app/Activity;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget v4, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v3

    iget-boolean v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v5, v1, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getExitToAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    return-object v2

    :cond_4
    const/4 v5, 0x5

    if-eq v4, v5, :cond_5

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    :cond_5
    const-string v5, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {p1, v5}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v5, v1, v3, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getExitToFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    goto :goto_0

    :cond_6
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v5, v1, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getExitToWidgetsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    goto :goto_0
.end method

.method protected onStageExitByTray()Landroid/animation/Animator;
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getExitToAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/home/HomeController$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeController$1;-><init>(Lcom/android/launcher3/home/HomeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public onStartForResult(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->setWaitingForResult(Z)V

    :cond_0
    return-void
.end method

.method public onSwipeBlockListener(FF)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v2}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setScrollableView(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setTalkBackEnabled(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setBlockArea(Lcom/android/launcher3/common/base/view/PagedView;FF)Z

    return-void
.end method

.method public onUpdateAlphabetList(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0

    return-void
.end method

.method public onZeroPageActiveChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ZeroPageController;->onZeroPageActiveChanged(Z)V

    return-void
.end method

.method public recoverCancelItemForFolderLock(Lcom/android/launcher3/common/base/item/IconInfo;JJIII)Z
    .locals 24

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v10, -0x66

    cmp-long v6, v8, v10

    if-nez v6, :cond_0

    const-string v6, "Launcher.FolderLock"

    const-string v8, "drag a item from Apps to Home no need recover"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeController;->getCellLayout(JJ)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v7

    const/16 v22, 0x0

    if-ltz p6, :cond_5

    if-ltz p7, :cond_5

    const/4 v6, 0x0

    aput p6, v18, v6

    const/4 v6, 0x1

    aput p7, v18, v6

    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v6, v8, v10

    if-eqz v6, :cond_5

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v6, v8, v10

    if-eqz v6, :cond_5

    move-object/from16 v0, v23

    instance-of v6, v0, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v6, :cond_2

    const-string v6, "Launcher.FolderLock"

    const-string v8, "drag from Hotseat  "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v19 .. v19}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v7, v1}, Lcom/android/launcher3/home/HotseatDragController;->createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    new-instance v19, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v19 .. v19}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setReorderLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v7, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setReorderLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setReorderLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setReorderLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :cond_5
    if-nez v22, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->showOutOfSpaceMessage()V

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    if-nez v6, :cond_7

    move-object/from16 v0, v23

    instance-of v6, v0, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v6

    const/4 v8, 0x0

    aget v8, v18, v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/launcher3/home/HotseatDragController;->makeEmptyCell(IZZ)V

    const/4 v6, 0x0

    aget v12, v18, v6

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v6, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v17}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const/4 v8, 0x0

    aget v8, v18, v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher3/common/drag/DragManager;->createDragView(Landroid/view/View;II)Lcom/android/launcher3/common/drag/DragView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    :cond_7
    :goto_1
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x0

    aget v12, v18, v6

    const/4 v6, 0x1

    aget v13, v18, v6

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v6, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_1
.end method

.method reinflateWidgetsIfNecessary()V
    .locals 10

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {v7, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v6, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v6, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->isReinflateRequired()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v9, v3}, Lcom/android/launcher3/home/HomeBindController;->removeAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v9, v3}, Lcom/android/launcher3/home/HomeBindController;->bindAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeCustomPage(I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/ZeroPageController;->removeCustomZeroPage(Z)V

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/home/ZeroPageController;->updatePageIndicatorForZeroPage(ZZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->startEdgeLight()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->removeCustomPlusPage()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method removeHomeItem(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeController;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    :goto_0
    instance-of v1, p1, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    check-cast p1, Lcom/android/launcher3/common/drag/DropTarget;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const-string v1, "Launcher.HomeController"

    const-string v2, "mDragInfo.cell has null parent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6

    instance-of v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v3, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isWidgetIdValid()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/launcher3/home/HomeController$19;

    invoke-direct {v3, p0, v2}, Lcom/android/launcher3/home/HomeController$19;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    sget-object v4, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/HomeController$19;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iget-object v3, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/home/HomeBindController;->removeAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v3, :cond_3

    instance-of v3, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_1

    :cond_3
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    const-string v3, "Launcher.HomeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeHomeItem : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z
    .locals 12

    const/4 v6, 0x0

    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonEnabled(Z)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Landroid/view/View;)V

    :cond_1
    const/4 v6, 0x1

    :cond_2
    return v6

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v7, :cond_0

    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v7, p1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->deleteItemInFolderFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "DTHF"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_5
    instance-of v1, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v1, :cond_2

    move-object v11, p1

    check-cast v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v1, :cond_6

    iget-object v1, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    sget-object v2, Lcom/android/launcher3/Launcher;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1, v11}, Lcom/android/launcher3/home/HomeBindController;->removeAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    invoke-virtual {p0, v11}, Lcom/android/launcher3/home/HomeController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    if-eqz v1, :cond_7

    invoke-virtual {v11}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v11}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isWidgetIdValid()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/android/launcher3/home/HomeController$20;

    invoke-direct {v1, p0, v11}, Lcom/android/launcher3/home/HomeController$20;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    sget-object v2, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeController$20;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_7
    iget-object v1, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v2, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v2, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    iget-object v2, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v2, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v2, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    iget-object v2, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v17

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/16 v16, 0x0

    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_2

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v3, :cond_1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v20

    invoke-virtual {v8, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/android/launcher3/home/HomeController$23;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/home/HomeController$23;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/android/launcher3/home/HomeLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v13, v14}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ne v3, v4, :cond_7

    const/16 v19, 0x1

    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-nez v12, :cond_8

    const/4 v15, 0x0

    :goto_5
    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f06000f

    invoke-static {v3, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v22, 0xc8

    move-wide/from16 v0, v22

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v3, Lcom/android/launcher3/home/HomeController$24;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15, v12}, Lcom/android/launcher3/home/HomeController$24;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)V

    invoke-virtual {v9, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    :goto_6
    instance-of v3, v12, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    move-object v3, v12

    check-cast v3, Lcom/android/launcher3/common/drag/DropTarget;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v3, :cond_5

    if-eqz v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v12}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_4

    :cond_7
    const/16 v19, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v15, v3

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v12}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto :goto_6

    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->invalidate()V

    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_c

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    :cond_c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 22

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v15

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v14, v3, :cond_2

    invoke-virtual {v15, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v3, :cond_1

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v18

    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/android/launcher3/home/HomeController$25;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HomeController$25;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/util/ItemInfoMatcher;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/android/launcher3/home/HomeLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12, v13}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ne v3, v4, :cond_7

    const/16 v17, 0x1

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v20, 0x7f06000f

    move/from16 v0, v20

    invoke-static {v3, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v3, Lcom/android/launcher3/home/HomeController$26;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1, v11}, Lcom/android/launcher3/home/HomeController$26;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V

    invoke-virtual {v8, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    :goto_5
    instance-of v3, v11, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    move-object/from16 v20, v0

    move-object v3, v11

    check-cast v3, Lcom/android/launcher3/common/drag/DropTarget;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v3, :cond_5

    if-eqz v11, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v11}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_4

    :cond_7
    const/16 v17, 0x0

    goto :goto_3

    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {v15}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {v15}, Landroid/view/ViewGroup;->invalidate()V

    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_b

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    :cond_b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method removeItemsByPackageName(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/android/launcher3/home/HomeController$22;

    invoke-direct {v3, p0, v8, p2, v2}, Lcom/android/launcher3/home/HomeController$22;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashSet;)V

    const/4 v10, 0x0

    invoke-static {v5, v3, v10}, Lcom/android/launcher3/home/HomeLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p2}, Lcom/android/launcher3/home/HomeController;->removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    return-void
.end method

.method removeItemsOnScreen(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/Launcher;->updateItemInfoToAppsItems(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public replaceFolderWithFinalItem(Lcom/android/launcher3/common/base/item/ItemInfo;ILandroid/view/View;)V
    .locals 17

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v16, p1

    check-cast v16, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/launcher3/home/HomeController;->getCellLayout(JJ)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v14

    const/4 v5, 0x0

    const/4 v2, 0x1

    move/from16 v0, p2

    if-gt v0, v2, :cond_4

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2, v14, v3}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v5

    move-object v15, v5

    :goto_1
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    move-object/from16 v0, v16

    iget v9, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    if-eqz v14, :cond_2

    instance-of v2, v14, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v2, :cond_5

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    :cond_2
    :goto_3
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    check-cast p3, Lcom/android/launcher3/common/drag/DropTarget;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "DTHF"

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object v5, v15

    :cond_4
    if-eqz v5, :cond_0

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/launcher3/folder/FolderInfo;->spanX:I

    move-object/from16 v0, v16

    iget v13, v0, Lcom/android/launcher3/folder/FolderInfo;->spanY:I

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    move-object v15, v5

    goto :goto_1

    :cond_7
    move-object v15, v5

    goto :goto_2
.end method

.method requestBindAppWidget(ILandroid/content/Intent;)V
    .locals 7

    const/16 v5, 0x1f4

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    new-instance v6, Lcom/android/launcher3/home/HomeController$7;

    invoke-direct {v6, p0}, Lcom/android/launcher3/home/HomeController$7;-><init>(Lcom/android/launcher3/home/HomeController;)V

    if-eqz p2, :cond_1

    const-string v2, "appWidgetId"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->completeTwoStageWidgetDrop(II)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v6, v5}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeController;->addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;I)V

    goto :goto_1
.end method

.method public requestBlurChange(ZLandroid/view/Window;FJ)V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;FJ)V

    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mBlurRunnableHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher3/util/BlurRunnable;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/util/BlurRunnable;-><init>(ZLandroid/view/Window;FJLandroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method requestCreateOrPickAppWidget(IILandroid/content/Intent;)V
    .locals 10

    iget v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    if-eqz p3, :cond_2

    const-string v6, "appWidgetId"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    :goto_0
    if-gez v5, :cond_3

    move v0, v3

    :goto_1
    if-ltz v0, :cond_0

    if-nez p2, :cond_5

    :cond_0
    const-string v6, "Launcher.HomeController"

    const-string v7, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-direct {p0, v4, v0}, Lcom/android/launcher3/home/HomeController;->completeTwoStageWidgetDrop(II)V

    new-instance v2, Lcom/android/launcher3/home/HomeController$6;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeController$6;-><init>(Lcom/android/launcher3/home/HomeController;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v2, v8, v9}, Lcom/android/launcher3/home/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v5, -0x1

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v2, v7}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-direct {p0, v8, v9}, Lcom/android/launcher3/home/HomeController;->ensurePendingDropLayoutExists(J)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    :cond_6
    invoke-direct {p0, p2, v0}, Lcom/android/launcher3/home/HomeController;->completeTwoStageWidgetDrop(II)V

    const/4 v6, -0x1

    if-eq p2, v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, p1, p3, v0, v6}, Lcom/android/launcher3/home/HomeController;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/home/HomeController;->sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    goto :goto_2
.end method

.method requestCreateShortcut(IILandroid/content/Intent;)V
    .locals 10

    const-wide/16 v8, 0x1f4

    const/4 v7, 0x1

    const/4 v6, -0x1

    new-instance v1, Lcom/android/launcher3/home/HomeController$8;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeController$8;-><init>(Lcom/android/launcher3/home/HomeController;)V

    if-ne p2, v6, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, p1, p3, v6, v2}, Lcom/android/launcher3/home/HomeController;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    sput-object v0, Lcom/android/launcher3/home/HomeController;->sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->completeAdd(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)J

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher3/common/view/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v1, v8, v9}, Lcom/android/launcher3/home/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v1, v8, v9}, Lcom/android/launcher3/home/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method requestReconfigureAppWidget(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    iget v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    iput v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, p1, p3, v1, v2}, Lcom/android/launcher3/home/HomeController;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    sput-object v0, Lcom/android/launcher3/home/HomeController;->sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->completeAdd(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)J

    goto :goto_0
.end method

.method resetAddInfo()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanY:I

    iput v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanX:I

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    return-void
.end method

.method resetBlurRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBlurRunnableHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBlurRunnableHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public resetStartedSFinder()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->resetStartedSFinder()V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;Z)V
    .locals 10

    if-nez p2, :cond_0

    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    if-eqz v0, :cond_3

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v8, v3}, Lcom/android/launcher3/home/HomeContainer;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    if-eqz v0, :cond_4

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v3, "launcher.current_screen"

    const/16 v8, -0x3e9

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, -0x3e9

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->setRestorePage(I)V

    :cond_1
    const-string v3, "launcher.add_container"

    const-wide/16 v8, -0x1

    invoke-virtual {p1, v3, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v3, "launcher.add_screen"

    const-wide/16 v8, -0x1

    invoke-virtual {p1, v3, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v8, "launcher.add_cell_x"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v8, "launcher.add_cell_y"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v8, "launcher.add_span_x"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v8, "launcher.add_span_y"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v3, "launcher.add_component"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iput-object v3, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    const-string v3, "launcher.add_widget_info"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v2, :cond_5

    const/4 v3, 0x0

    :goto_2
    iput-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    const-string v3, "launcher.add_widget_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->setWaitingForResult(Z)V

    const-string v3, "Launcher.HomeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreState exist pendingAddInfo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x4

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x4

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v3

    goto :goto_2
.end method

.method public setAppsButtonEnabled(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->createAppsButton(Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/launcher3/LauncherModel;->updateAppsButton(Landroid/content/Context;ZLcom/android/launcher3/common/base/item/IconInfo;)V

    return-void
.end method

.method public setHomeDefaultIconClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeController;->mHomeDefaultIconClick:Z

    return-void
.end method

.method setPendingAddItem(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)V
    .locals 0

    sput-object p1, Lcom/android/launcher3/home/HomeController;->sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    return-void
.end method

.method public setRestoring(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    return-void
.end method

.method setScrollBlockArea(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setBlockArea(Lcom/android/launcher3/common/base/view/PagedView;FF)Z

    return-void
.end method

.method public setScrollForceBlock()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setForceBlock()V

    return-void
.end method

.method setScrollTalkBackEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setTalkBackEnabled(Landroid/content/Context;)Z

    return-void
.end method

.method public setWaitingForResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeController;->mWaitingForResult:Z

    return-void
.end method

.method public setup()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeLoader;->getUpdater()Lcom/android/launcher3/common/model/DataUpdater;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/common/tray/TrayManager;->addTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V

    :cond_0
    new-instance v2, Lcom/android/launcher3/home/HomeBindController;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v4

    invoke-direct {v2, v3, p0, v1, v4}, Lcom/android/launcher3/home/HomeBindController;-><init>(Landroid/content/Context;Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;)V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    new-instance v2, Lcom/android/launcher3/home/HomeTransitionAnimation;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-direct {v2, v3, p0, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/tray/TrayManager;)V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    new-instance v2, Lcom/android/launcher3/home/LauncherAppWidgetHost;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/home/LauncherAppWidgetHost;-><init>(Lcom/android/launcher3/Launcher;I)V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->startListening()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addFolderLockActionCallback(Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;)V

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherModel;->registerOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherModel;->registerOnLiveIconUpdateListener(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportCustomerDialerChange()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeController$DialerChangeObserver;-><init>(Lcom/android/launcher3/home/HomeController;)V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDialerChangeObserver:Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "skt_phone20_settings"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mDialerChangeObserver:Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    new-instance v2, Lcom/android/launcher3/util/capture/CapturePreview;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v2, v3}, Lcom/android/launcher3/util/capture/CapturePreview;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mCaptureListener:Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/capture/CapturePreview;->setListener(Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;-><init>(Lcom/android/launcher3/home/HomeController;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->setHomeProxyCallbacks(Lcom/android/launcher3/proxy/HomeProxyCallbacks;)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setSystemTouchSlop(Landroid/content/Context;)I

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/event/ScrollDeterminator;->registrateController(I)V

    return-void
.end method

.method showCancelDropTarget()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/home/DropTargetBar;->showCancelDropTarget()V

    :cond_0
    return-void
.end method

.method showMoveToAppsPanel(Z)V
    .locals 4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/common/tray/TrayManager;->pullTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/common/tray/TrayManager;->releaseTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeContainer;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getTrayReturnAnimation(ZZ)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method showNoSpacePage(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method showOutOfSpaceMessage()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f090089

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    instance-of v2, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    iget-object v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    :cond_2
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    const-string v2, "previous_hostView"

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    const-string v2, "Launcher.HomeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parent of child is null, child = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-wide v6, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v2, v6, v8

    if-nez v2, :cond_7

    move v1, v3

    :goto_1
    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v5

    invoke-virtual {v2, v0, v5, p2, p3}, Lcom/android/launcher3/Launcher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V

    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v5

    if-nez v1, :cond_9

    move v2, v3

    :goto_3
    invoke-virtual {v5, p1, v2, p3}, Lcom/android/launcher3/home/WorkspaceDragController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/launcher3/home/HotseatDragController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V

    instance-of v2, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->showMoveToAppsPanel(Z)V

    :cond_6
    move v4, v3

    goto :goto_0

    :cond_7
    move v1, v4

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v5

    invoke-virtual {v2, v0, v5, p2, p3}, Lcom/android/launcher3/Launcher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V

    goto :goto_2

    :cond_9
    move v2, v4

    goto :goto_3
.end method

.method startEdgeLight()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v0}, Lcom/android/launcher3/home/EdgeLight;->startEdgeLight()V

    :cond_0
    return-void
.end method

.method public startTrayMove()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v0}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->semClearAccessibilityFocus()V

    :cond_0
    return-void
.end method

.method stopEdgeLight()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v0}, Lcom/android/launcher3/home/EdgeLight;->stopEdgeLight()V

    :cond_0
    return-void
.end method

.method protected supportNavigationBarForState(I)Z
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getInternalState()I

    move-result p1

    :cond_0
    const/4 v0, 0x1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method protected supportStatusBarForState(I)Z
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getInternalState()I

    move-result p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method protected switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 14

    const/4 v7, 0x3

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v11

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v13

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v0, v13}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)V

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v2

    iget-boolean v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/Workspace;->setVisibility(I)V

    invoke-direct {p0, v11, v13}, Lcom/android/launcher3/home/HomeController;->switchInternalStateChange(II)V

    const/4 v12, 0x0

    if-ne v11, v3, :cond_4

    const/4 v0, 0x4

    if-ne v13, v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getOverviewAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v12

    :cond_0
    :goto_0
    if-ne v13, v3, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->notifyCaptureIfNecessary()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->resetSettingsValue()V

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    return-object v12

    :cond_2
    if-ne v13, v5, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto :goto_0

    :cond_3
    if-ne v13, v6, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->updateCheckBox(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne v11, v0, :cond_6

    if-ne v13, v3, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getOverviewAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-ne v13, v0, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move v6, v1

    move-object v7, v2

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getScreenGridAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto :goto_0

    :cond_6
    if-eq v11, v5, :cond_7

    if-ne v11, v7, :cond_b

    :cond_7
    if-ne v11, v7, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->clearAllResizeFrames()Z

    :cond_8
    if-ne v13, v3, :cond_a

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/HomeController;->updateCheckBox(Z)V

    :cond_9
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move v6, v1

    move-object v7, v2

    move v8, v4

    move v9, v4

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto/16 :goto_0

    :cond_a
    if-ne v13, v6, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->updateCheckBox(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x5

    if-ne v11, v0, :cond_d

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    if-ne v13, v3, :cond_c

    move v10, v3

    :goto_2
    move v6, v1

    move-object v7, v2

    move v8, v4

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getScreenGridAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto/16 :goto_0

    :cond_c
    move v10, v4

    goto :goto_2

    :cond_d
    if-ne v11, v6, :cond_0

    if-ne v13, v3, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v12

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/HomeController;->updateCheckBox(Z)V

    goto/16 :goto_0

    :cond_e
    if-ne v13, v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/HomeController;->updateCheckBox(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotWordInstance()Lcom/android/launcher3/home/HotWord;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotWordInstance()Lcom/android/launcher3/home/HotWord;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/HotWord;->setEnableHotWord(Z)V

    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    goto/16 :goto_1
.end method

.method updateBadgeItems(Ljava/util/ArrayList;)V
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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    new-instance v2, Lcom/android/launcher3/home/HomeController$28;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/home/HomeController$28;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;)V

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    return-void
.end method

.method updateBixbyHomeEnterCount()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v0}, Lcom/android/launcher3/home/EdgeLight;->updateBixbyHomeEnterCount()V

    :cond_0
    return-void
.end method

.method updateCheckBox(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->updateCheckBox(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Hotseat;->updateCheckBox(Z)V

    return-void
.end method

.method public updateCountBadge(Landroid/view/View;Z)V
    .locals 2

    instance-of v1, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconView;->getCountBadgeView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZZ)V

    :cond_0
    return-void
.end method

.method public updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method updateItemLocationsInDatabase(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 14

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v11

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v4

    const/16 v10, -0x64

    instance-of v0, p1, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v0, :cond_0

    const-wide/16 v4, -0x1

    const/16 v10, -0x65

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    int-to-long v2, v10

    iget v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v9, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateLiveIcon(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 13

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v11, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v11, :cond_4

    move-object v11, v5

    check-cast v11, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v4, v11, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/android/launcher3/common/view/LiveIconManager;->isKnoxLiveIcon(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v10

    check-cast v11, Lcom/android/launcher3/common/view/IconView;

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object v11, v5

    check-cast v11, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v11, v11, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_2

    move-object v11, v5

    check-cast v11, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v11, v11, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v10

    check-cast v11, Lcom/android/launcher3/common/view/IconView;

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_4
    instance-of v11, v5, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v11, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    iget v11, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/16 v12, 0x9

    if-ge v11, v12, :cond_7

    invoke-static {v9}, Lcom/android/launcher3/common/view/LiveIconManager;->isCalendarPackage(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v3, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-static {v11}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_5
    const/4 v8, 0x1

    :cond_6
    if-eqz v8, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public updateOnlyCurrentPage(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->updateOnlyCurrentPage(Z)V

    :cond_0
    return-void
.end method

.method updateRestoreItems(Ljava/util/HashSet;)V
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

    const/4 v0, 0x1

    new-instance v1, Lcom/android/launcher3/home/HomeController$29;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/home/HomeController$29;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;)V

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;Lcom/android/launcher3/common/model/IconCache;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Lcom/android/launcher3/common/model/IconCache;",
            ")V"
        }
    .end annotation

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    new-instance v5, Lcom/android/launcher3/home/HomeController$27;

    invoke-direct {v5, p0, v3, p2, v1}, Lcom/android/launcher3/home/HomeController$27;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;Lcom/android/launcher3/common/model/IconCache;Ljava/util/ArrayList;)V

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V
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

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateZeroPage(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPage(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->updatePageIndicatorForZeroPage(ZZ)V

    const-string v0, "Launcher.HomeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateZeroPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method widgetsRestored(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/android/launcher3/home/DeferredWidgetRefresh;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher3/home/DeferredWidgetRefresh;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/ArrayList;Lcom/android/launcher3/home/LauncherAppWidgetHost;)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v4, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v3, v4, v2}, Lcom/android/launcher3/home/HomeLoader;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/home/DeferredWidgetRefresh;->run()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v2, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v2, v2, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    if-eqz v2, :cond_2

    const/16 v2, 0x64

    iput v2, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->installProgress:I

    iget-object v2, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->applyState()V

    goto :goto_0
.end method
