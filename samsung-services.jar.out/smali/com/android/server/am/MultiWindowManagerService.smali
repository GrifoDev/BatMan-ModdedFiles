.class public Lcom/android/server/am/MultiWindowManagerService;
.super Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;
.source "MultiWindowManagerService.java"

# interfaces
.implements Lcom/android/server/am/IMultiWindowManagerServiceBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowManagerService$1;,
        Lcom/android/server/am/MultiWindowManagerService$2;,
        Lcom/android/server/am/MultiWindowManagerService$H;
    }
.end annotation


# static fields
.field private static final ACTION_MINIMIZE_ALL:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL"

.field private static final ACTION_MINIMIZE_ALL_BY_SYSTEM:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

.field private static final DEBUG:Z

.field private static final DEBUG_DEX_COMPAT:Z = false

.field private static final DEBUG_ENSURE_DOCKEDVIEW:Z

.field private static final DEBUG_SETTINGS:Z = false

.field private static final DEBUG_SNAP_WINDOW:Z

.field private static final DEBUG_STACK:Z = false

.field private static final NUM_OF_MULTI_INSTANCE_LIMIT_DEFAULT:I = 0x2

.field private static final NUM_OF_MULTI_INSTANCE_LIMIT_DEFAULT_ON_DESKTOP_MODE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerService"

.field private static final TAG_ENSURE_DOCKEDVIEW:Ljava/lang/String; = "MultiWindowManagerService_EnsureDockedView"

.field private static final TAG_SNAP_WINDOW:Ljava/lang/String; = "MultiWindowManagerService_SnapWindow"


# instance fields
.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoResizingEnabled:Z

.field private mBoundsForNewconfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/multiwindow/IMultiWindowCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCoolDownFreeformReceiver:Landroid/content/BroadcastReceiver;

.field private mCoolDownFreeformRequested:Z

.field private mCurrentOrientation:I

.field private mDecorCaptionWindowHeight:I

.field private mDeferResume:Z

.field private mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

.field private mDexCompatPortraitTaskSize:Landroid/graphics/Point;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mEnsureDockedMode:Z

.field private mFreeformAlwaysVisible:Z

.field mFreeformDefLongSize:I

.field mFreeformDefShortSize:I

.field private mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field final mH:Lcom/android/server/am/MultiWindowManagerService$H;

.field private mInitialDisplayDpSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mIsDesktopModeEnabled:Z

.field private mIsFactoryBinary:Z

.field private mIsMinimizeContainerServiceRunning:Z

.field private mIsRotationAnimating:Z

.field private mLastFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mLastFocusedTr:Lcom/android/server/am/TaskRecord;

.field private mLastGlobalDensity:I

.field private mMWForceOnRequesters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMWForceOnRequestersLog:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMWOffRequesters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMWOffRequestersForAllUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMWOffRequestersLog:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxFreeformCnt:I

.field private mMaxMultiInstanceCnt:I

.field private mMinimizeContainerSerivceHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimizeContainerService:Landroid/content/Intent;

.field mMinimizeMaxCount:I

.field private mMovingMultiWindowTasksToFullScreen:Z

.field private final mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/multiwindow/IMultiWindowEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mMultiWindowSettingsObserver:Lcom/android/server/am/MultiWindowSettingsObserver;

.field private mMultiwindowSupportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

.field private mRequestFreefomInvisible:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStatusBarHeight:I

.field private mSupportMultiInstanceAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSystemResources:Landroid/content/res/Resources;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/MultiWindowManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCoolDownFreeformRequested:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/am/MultiWindowManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/am/MultiWindowManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/am/MultiWindowManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxFreeformCnt:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/MultiWindowManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->processKillByClosingFreeform(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/MultiWindowManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->setCoolDownFreeformRequested(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG_SNAP_WINDOW:Z

    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG_ENSURE_DOCKEDVIEW:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiwindowSupportList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformAlwaysVisible:Z

    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mRequestFreefomInvisible:Z

    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMultiWindowTasksToFullScreen:Z

    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxFreeformCnt:I

    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizingEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferResume:Z

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$H;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerService:Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerSerivceHistory:Ljava/util/ArrayList;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastFocusedTr:Lcom/android/server/am/TaskRecord;

    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCoolDownFreeformRequested:Z

    iput v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentOrientation:I

    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsRotationAnimating:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBoundsForNewconfig:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    iput v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mDecorCaptionWindowHeight:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedMode:Z

    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsFactoryBinary:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$1;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$2;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCoolDownFreeformReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSystemResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSystemResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "System Resources is not ready."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V
    .locals 6

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isAttached()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    monitor-exit v2

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerService:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bind success, MinimizeContainerService, reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerSerivceHistory:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BindService["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] Success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_4
    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bind failed, MinimizeContainerService, reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static dockSideTopLeft(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private findFirstReturnToHomeTask(Ljava/util/ArrayList;)Lcom/android/server/am/TaskRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    return-object v3
.end method

.method private forceClearMinimizeIfNeededLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 9

    const/4 v8, 0x2

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeMaxCount:I

    if-ge v5, v6, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    if-ne v3, p1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v5, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget v6, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v5, v6, :cond_1

    iget v5, v3, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeMaxCount:I

    if-le v2, v5, :cond_1

    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "MultiWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "forceClearMinimizeIfNeededLocked tr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, v3, v8}, Lcom/android/server/am/MultiWindowManagerService;->setHiddenTaskLocked(Lcom/android/server/am/TaskRecord;I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private getDisplayByStackId(I)Landroid/view/Display;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    return-object v1

    :cond_0
    return-object v2
.end method

.method private getNextVisibleActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 7

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nextVisible "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eq v2, p2, :cond_2

    iget v5, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v5}, Landroid/app/ActivityManager$StackId;->keepFocusInStackIfPossible(I)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v2

    :cond_1
    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v5, p2, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-ne v3, v5, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_3

    :cond_2
    return-object v2

    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    return-object v4
.end method

.method private getSupportScreenBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;I)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p3}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->convertToConfigurationOrientation(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSupportScreenBounds: Unknown orientation!!, task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mIsDexCompatEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " appScreenOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " convertedOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    :goto_1
    iget-boolean v1, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDecorCaptionWindowHeight:I

    neg-int v1, v1

    invoke-virtual {p2, v3, v3, v3, v1}, Landroid/graphics/Rect;->inset(IIII)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    sget-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "MultiWindowManagerService"

    const-string/jumbo v2, "getSupportScreenBounds: mBounds is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSupportScreenDpSizeOnInitialDisplay(IZLandroid/graphics/Point;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mInitialDisplayDpSize:Ljava/util/HashMap;

    if-nez v9, :cond_0

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mInitialDisplayDpSize:Ljava/util/HashMap;

    :cond_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mInitialDisplayDpSize:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    :cond_1
    const/4 v7, 0x1

    :goto_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3bcccccd    # 0.00625f

    mul-float v2, v9, v10

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1, v3}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    iget v9, v3, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    div-float/2addr v9, v2

    float-to-int v0, v9

    iget v9, v3, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    div-float/2addr v9, v2

    float-to-int v1, v9

    if-le v0, v1, :cond_5

    const/16 v5, 0x10

    :goto_1
    if-le v0, v1, :cond_6

    const/16 v6, 0x9

    :goto_2
    div-int v9, v0, v5

    mul-int v1, v9, v6

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mInitialDisplayDpSize:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mInitialDisplayDpSize:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    if-eqz v4, :cond_3

    if-eqz p2, :cond_7

    iget v9, v4, Landroid/graphics/Point;->y:I

    :goto_3
    iput v9, p3, Landroid/graphics/Point;->x:I

    if-eqz p2, :cond_8

    iget v9, v4, Landroid/graphics/Point;->x:I

    :goto_4
    iput v9, p3, Landroid/graphics/Point;->y:I

    :cond_3
    return-void

    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    :cond_5
    const/16 v5, 0x9

    goto :goto_1

    :cond_6
    const/16 v6, 0x10

    goto :goto_2

    :cond_7
    iget v9, v4, Landroid/graphics/Point;->x:I

    goto :goto_3

    :cond_8
    iget v9, v4, Landroid/graphics/Point;->y:I

    goto :goto_4
.end method

.method private getTaskDimensions(Landroid/content/pm/ActivityInfo;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MultiWindowManagerService;->getMinTaskDimensions(Landroid/graphics/Point;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/MultiWindowManagerService;->getMaxTaskDimensions(Landroid/graphics/Point;Landroid/content/pm/ActivityInfo;)V

    :cond_0
    return-void
.end method

.method private getTaskPositionerByStackId(I)Lcom/android/server/am/LaunchingTaskPositioner;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTaskPositioner()Lcom/android/server/am/LaunchingTaskPositioner;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method private getTopActivityByPackageLocked(ILjava/lang/String;Z)Lcom/android/server/am/ActivityRecord;
    .locals 8

    const/4 v1, 0x0

    iget-boolean v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v7, :cond_5

    if-eqz p2, :cond_5

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    :goto_0
    if-ltz v5, :cond_5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    if-eqz p3, :cond_0

    iget-boolean v7, v4, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v7, :cond_4

    :cond_0
    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget v7, v4, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v7, :cond_3

    return-object v2

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private initGameManagerService()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->GAME_TUNER_ENABLED:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "gamemanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    goto :goto_0
.end method

.method private initMultiInstanceSettings()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    :goto_0
    sget v0, Lcom/samsung/android/framework/res/R$array;->config_multiInstanceSupportAppList:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->loadStringArray(ILjava/util/ArrayList;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    goto :goto_0
.end method

.method private installSystemProviders()V
    .locals 2

    new-instance v0, Lcom/android/server/am/MultiWindowSettingsObserver;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/MultiWindowSettingsObserver;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowSettingsObserver:Lcom/android/server/am/MultiWindowSettingsObserver;

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowSettingsObserver:Lcom/android/server/am/MultiWindowSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowSettingsObserver;->init()V

    return-void
.end method

.method private isAllTaskSlidedLocked()Z
    .locals 8

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    iget v6, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    move-object v0, v1

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-boolean v6, v4, Lcom/android/server/am/TaskRecord;->mSlideMode:Z

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "MultiWindowManagerService"

    const-string/jumbo v7, "isAllTaskSlidedLocked, unslided task exists."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v6, 0x0

    return v6

    :cond_4
    const/4 v6, 0x1

    return v6
.end method

.method private isDockedStackVisibleLocked()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isMultiWindowForceOnRequested(I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method private isMultiWindowOffRequested(I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method private isStackTranslucent(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    :goto_0
    if-ltz v5, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v6, :cond_2

    if-ne v3, p2, :cond_0

    :cond_2
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_0

    return v7

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    return v6
.end method

.method private loadResources()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const v2, 0x10500c0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStatusBarHeight:I

    sget v1, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_shortsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformDefShortSize:I

    sget v1, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_longsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformDefLongSize:I

    sget v1, Lcom/samsung/android/framework/res/R$integer;->multiwindow_freeform_max_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxFreeformCnt:I

    sget v1, Lcom/samsung/android/framework/res/R$array;->config_multiWindowSupportAppList:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiwindowSupportList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->loadStringArray(ILjava/util/ArrayList;)V

    sget v1, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_desktop_freeform_decor_caption_window_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDecorCaptionWindowHeight:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    sget v2, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_portrait_task_size_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_portrait_task_size_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

    sget v2, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_landscape_task_size_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_landscape_task_size_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeMaxCount:I

    return-void
.end method

.method private loadStringArray(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private minimizeMaxCountingFreeformLocked(I)V
    .locals 14

    const/4 v13, 0x0

    sget-boolean v11, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v11, :cond_6

    const/4 v1, 0x0

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    iget v11, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    move-object v1, v5

    :cond_1
    if-eqz v1, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v10

    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxFreeformCnt:I

    if-le v11, v12, :cond_6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget v11, v8, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v11, :cond_2

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    if-nez v11, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    iget v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxFreeformCnt:I

    if-le v0, v11, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget v11, v8, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v11, :cond_5

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11, v13, v13}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    iget v11, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZ)Z

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v12, Lcom/android/server/am/MultiWindowManagerService$6;

    invoke-direct {v12, p0}, Lcom/android/server/am/MultiWindowManagerService$6;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    invoke-virtual {v11, v12}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    return-void
.end method

.method private minimizeOhterFreeformsLocked(I)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->minimizeAllTasksInFreeformLocked()V

    :cond_0
    return-void
.end method

.method private moveActivityTaskToBackLocked(IZ)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    return v3

    :cond_0
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->changeFreeformMode()V

    :cond_1
    return v3

    :cond_2
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isKnoxDesktopModeLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :goto_0
    return v0

    :cond_4
    const-string/jumbo v2, "FFAC"

    const-string/jumbo v3, "Minimize"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private moveFreeformStackToBottomLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v1, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-interface {v0, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->moveStackToBottomLocked(I)V

    :cond_0
    return-void
.end method

.method private moveFreeformStackToTopLocked(ILcom/android/server/am/ActivityStack;)I
    .locals 6

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v4, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v4}, Landroid/app/ActivityManager$StackId;->isAlwaysOnTop(I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eq v3, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    :cond_1
    return p1
.end method

.method private moveLruActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V
    .locals 4

    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v3, p3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private movePausingActivityIfNeededLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V
    .locals 10

    const/4 v7, 0x0

    const/16 v6, 0x65

    const/4 v4, 0x0

    iget-object v1, p1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v5, p3, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-eqz v4, :cond_2

    iget-object v5, p1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object v7, p1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, p1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-wide v6, v1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v2, v6, v8

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_1

    const-wide/16 v2, 0x0

    :cond_1
    iput-object v1, p2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, p2, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method private moveTaskToStackWithSizeUnchangedLocked(IIZ)V
    .locals 12

    const/4 v8, 0x1

    const-string/jumbo v2, "moveTaskToStackWithSizeUnchangedLocked"

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, p2, v8, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-ne v9, v1, :cond_0

    const/4 v5, 0x1

    :goto_0
    iget-object v9, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v9, v1, :cond_1

    const/4 v7, 0x1

    :goto_1
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-ne v9, v1, :cond_2

    const/4 v6, 0x1

    :goto_2
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v10, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v11, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v9, v10, v11, p3}, Lcom/android/server/wm/WindowManagerService;->moveTaskToStack(IIZ)V

    invoke-virtual {v3, v4, p3, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    if-nez v5, :cond_4

    :goto_3
    invoke-virtual {v3, v1, v6, v7, v2}, Lcom/android/server/am/ActivityStack;->moveToFrontAndResumeStateIfNeeded(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    move v6, v8

    goto :goto_3
.end method

.method private notifyMultiWindowSettingChanged(Z)V
    .locals 4

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private prepareAppTransitionIfNeeded(Lcom/android/server/am/TaskRecord;)Z
    .locals 5

    const/16 v4, 0xb

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private processKillByClosingFreeform(I)V
    .locals 5

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    sget-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processKillByClosingFreeform pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->watingKillByClosingFreeform:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->watingKillByClosingFreeform:Z

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-gtz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-nez v1, :cond_3

    const-string/jumbo v1, "closing-freeformTask"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    :cond_2
    return-void

    :cond_3
    :try_start_1
    const-string/jumbo v1, "closing-freeformTask-byWaiting"

    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private readGrantPermissionComponents()V
    .locals 15

    const/4 v14, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v10, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/pm/IPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/pm/IPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    const/4 v12, 0x0

    const v13, 0x10400

    invoke-interface {v10, v0, v12, v13, v11}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v4, Landroid/content/ComponentName;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const-string/jumbo v10, "com.android.systemui/com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v10, v6}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setGrantPermissionComponents(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Framework_ConfigAppListToBlockFloatingMultiWindows"

    invoke-virtual {v10, v11, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    array-length v12, v11

    :goto_1
    if-ge v10, v12, :cond_2

    aget-object v3, v11, v10

    iget-object v13, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private retrieveMultiWindowSettings()V
    .locals 9

    const/4 v5, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.software.freeform_window_management"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "enable_freeform_support"

    invoke-static {v2, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.software.picture_in_picture"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {}, Landroid/app/ActivityManager;->supportsMultiWindow()Z

    move-result v3

    const-string/jumbo v6, "force_resizable_activities"

    invoke-static {v2, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v0, v6, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v8, v8, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowManagerService;->setForceResizableTasks(Z)V

    if-nez v3, :cond_0

    if-eqz v0, :cond_6

    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    if-nez v1, :cond_4

    move v6, v0

    :goto_2
    iput-boolean v6, v8, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    if-nez v4, :cond_5

    :goto_3
    iput-boolean v0, v6, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    monitor-exit v7

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v6, v5

    goto :goto_2

    :cond_5
    move v0, v5

    goto :goto_3

    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method private scheduleSetMultiWindowDynamicEnabled(ZI)V
    .locals 3

    const-string/jumbo v1, "multi_window_enabled"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/am/MultiWindowManagerService;->scheduleSetMultiWindowSettingToRepository(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleSetMultiWindowSettingToRepository(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setCoolDownFreeformRequested(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCoolDownFreeformRequested:Z

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setCoolDownFreeformRequested(Z)V

    return-void
.end method

.method private setLaunchBoundsLocked(ILandroid/graphics/Rect;)V
    .locals 4

    const/4 v2, 0x0

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_3

    if-nez p2, :cond_0

    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLaunchBoundsLocked: bounds is abnormal, r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLaunchBoundsLocked: cannot find task, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-void

    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    sget-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLaunchBoundsLocked: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private setMultiWindowDynamicEnabled(ZI)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowSettingsObserver:Lcom/android/server/am/MultiWindowSettingsObserver;

    const-string/jumbo v1, "multi_window_enabled"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MultiWindowSettingsObserver;->setMultiWindowSettingToRepository(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZ)V

    return-void

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method private setMultiWindowForceEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 14

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v10, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v11, "setMultiWindowForceEnabled"

    invoke-virtual {v8, v10, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    move/from16 v0, p4

    if-eq v0, v8, :cond_0

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v10, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v11, "setMultiWindowForceEnabled"

    invoke-virtual {v8, v10, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v8, -0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_5

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    :goto_0
    const/4 v8, -0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_6

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

    :goto_1
    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v10, 0x64

    if-le v8, v10, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz p3, :cond_7

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateMultiWindowDynamicEnabledLocked(Ljava/lang/String;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    :goto_2
    :try_start_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v8, "MultiWindowManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_5
    :try_start_3
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_7
    :try_start_4
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateMultiWindowDynamicEnabledLocked(Ljava/lang/String;ZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v8

    :try_start_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v10, "MultiWindowManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v9

    return-void

    :cond_9
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private setSnapWindowLocked(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    .locals 44

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v2, :cond_7

    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/16 v18, 0x0

    const/16 v17, 0x1

    const/16 v16, 0x2

    const/4 v15, 0x3

    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v33

    if-gtz v33, :cond_0

    return-void

    :cond_0
    const/16 v38, 0x0

    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v31

    if-nez v31, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v32

    if-nez v32, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v43

    if-nez v43, :cond_3

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v2, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getFullScreenStackTopTaskBounds(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    const/4 v2, 0x1

    move-object/from16 v0, v32

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0xcb

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    new-instance v7, Landroid/graphics/Rect;

    sub-int v4, v19, v42

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v37

    invoke-direct {v7, v5, v6, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z

    const/4 v2, 0x1

    move-object/from16 v0, v32

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setTaskToSnapWindowTarget(IZ)Z

    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move/from16 v0, v37

    iput v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v0, v33

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor;->mSnapWindowRunning:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor;->mSnapWindowRunning:Z

    new-instance v40, Landroid/graphics/Rect;

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v40

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move/from16 v0, v36

    neg-int v2, v0

    move-object/from16 v0, v40

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v37

    move-object/from16 v1, v40

    iput v0, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v19, v42

    sub-int v2, v2, v36

    move-object/from16 v0, v40

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v2, v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG_SNAP_WINDOW:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "MultiWindowManagerService_SnapWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "snap target full screen tid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " region : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v38, v32

    :cond_6
    :goto_0
    if-eqz v38, :cond_7

    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_13

    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v14}, Lcom/android/server/am/MultiWindowManagerService;->logSnapWindowComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_9

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    :cond_9
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->swapTasksForSnapWindowLocked()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v28

    if-nez v28, :cond_b

    return-void

    :cond_b
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v29

    if-nez v29, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0xcb

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, v29

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setTaskToSnapWindowTarget(IZ)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move/from16 v0, v33

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor;->mSnapWindowRunning:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor;->mSnapWindowRunning:Z

    new-instance v40, Landroid/graphics/Rect;

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v40

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move/from16 v0, v36

    neg-int v2, v0

    move-object/from16 v0, v40

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v40

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, v36

    move-object/from16 v0, v40

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v2, v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v34, v2, -0x1

    :goto_3
    if-ltz v34, :cond_f

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    iget v0, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v39, v0

    if-eqz v39, :cond_e

    const/4 v2, 0x1

    move/from16 v0, v39

    if-ne v0, v2, :cond_11

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v39

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    :cond_f
    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG_SNAP_WINDOW:Z

    if-eqz v2, :cond_10

    const-string/jumbo v4, "MultiWindowManagerService_SnapWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "snap target "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_12

    const-string/jumbo v2, "A "

    :goto_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " tid : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " region : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v38, v29

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v34, v34, -0x1

    goto :goto_3

    :cond_12
    const-string/jumbo v2, "B "

    goto :goto_4

    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mSnapWindowRunning:Z

    if-nez v2, :cond_15

    return-void

    :cond_15
    const-string/jumbo v2, "remove task"

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    const-string/jumbo v2, "resize docked size null"

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    const-string/jumbo v2, "config-orientation"

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    const-string/jumbo v2, "snap task to back"

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_16

    const/16 v25, 0x1

    :goto_5
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_17

    const/16 v21, 0x1

    :goto_6
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_18

    const/16 v20, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor;->mSnapWindowRunning:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v28

    if-nez v28, :cond_19

    return-void

    :cond_16
    const/16 v25, 0x0

    goto :goto_5

    :cond_17
    const/16 v21, 0x0

    goto :goto_6

    :cond_18
    const/16 v20, 0x0

    goto :goto_7

    :cond_19
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v29

    if-nez v29, :cond_1a

    return-void

    :cond_1a
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_1b

    move-object/from16 v0, v29

    iget-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    if-eqz v2, :cond_1c

    :cond_1b
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v2, v3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getMiddleTargetDockedBounds(Landroid/graphics/Rect;)V

    :cond_1c
    move-object/from16 v0, v29

    iget-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    if-nez v2, :cond_20

    if-eqz v23, :cond_20

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v41

    const/16 v34, 0x0

    :goto_8
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v34

    if-ge v0, v2, :cond_1f

    move-object/from16 v0, v41

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v29

    iget-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    move-object/from16 v0, v29

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    const/4 v2, 0x0

    move-object/from16 v0, v29

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0xca

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setTaskToSnapWindowTarget(IZ)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v5, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG_SNAP_WINDOW:Z

    if-eqz v2, :cond_1d

    const-string/jumbo v2, "MultiWindowManagerService_SnapWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "un-snapped tid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void

    :cond_1e
    add-int/lit8 v34, v34, 0x1

    goto :goto_8

    :cond_1f
    move-object/from16 v0, v29

    iget-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    if-nez v2, :cond_20

    return-void

    :cond_20
    if-eqz v22, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->adjStackBoundsForSnapWindow()V

    :cond_21
    :goto_9
    const/4 v2, 0x0

    move-object/from16 v0, v29

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    const/4 v2, 0x0

    move-object/from16 v0, v29

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setTaskToSnapWindowTarget(IZ)Z

    if-nez v24, :cond_22

    if-nez v20, :cond_22

    if-eqz v23, :cond_23

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_23

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v4, 0xf

    move-object/from16 v0, p4

    invoke-virtual {v2, v4, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG_SNAP_WINDOW:Z

    if-eqz v2, :cond_24

    const-string/jumbo v2, "MultiWindowManagerService_SnapWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "un-snapped tid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " reason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/16 v30, 0x0

    if-eqz v25, :cond_29

    const-string/jumbo v30, "DividerDragging"

    :cond_25
    :goto_a
    if-eqz v30, :cond_7

    const-string/jumbo v2, "SNOF"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_26
    if-nez v26, :cond_21

    if-eqz v25, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0xcc

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_9

    :cond_27
    if-eqz v21, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0xcd

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_9

    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0xcb

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    goto/16 :goto_9

    :cond_29
    if-eqz v22, :cond_2a

    const-string/jumbo v30, "OrientationChanged"

    goto :goto_a

    :cond_2a
    if-eqz v20, :cond_25

    const-string/jumbo v30, "DividerFinishButton"

    goto :goto_a
.end method

.method private slideAllFreeformTasksLocked()V
    .locals 10

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "MultiWindowManagerService"

    const-string/jumbo v7, "slideAllFreeformTasksLocked is calling"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    iget v6, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-boolean v6, v4, Lcom/android/server/am/TaskRecord;->mSlideMode:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v7, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->slideFreeformTask(IZI)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method private swapTasksForSnapWindowLocked()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v17

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v18

    :goto_1
    if-eqz v17, :cond_0

    if-nez v18, :cond_3

    :cond_0
    const-string/jumbo v1, "MultiWindowManagerService"

    const-string/jumbo v3, "Unable to swap tasks, either docked or fullscreen stack is empty."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    :cond_2
    const/16 v18, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v3, 0xca

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->moveTaskToStackWithSizeUnchangedLocked(IIZ)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_5

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget v13, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v13, v1, :cond_4

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v11}, Lcom/android/server/am/MultiWindowManagerService;->moveTaskToStackWithSizeUnchangedLocked(IIZ)V

    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    if-lez v16, :cond_6

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/TaskRecord;

    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_6
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    iget-object v1, v9, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v8, Landroid/graphics/Rect;

    iget-object v1, v10, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v8, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x112006a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050018

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v14

    iput v1, v8, Landroid/graphics/Rect;->bottom:I

    :cond_7
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    iget v4, v7, Landroid/graphics/Rect;->right:I

    iget v5, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V
    .locals 6

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MultiWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbind MinimizeContainerService, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerSerivceHistory:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UnbindService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private unslideAllFreeformTasksLocked()V
    .locals 11

    const/4 v10, 0x0

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v7, :cond_5

    sget-boolean v7, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "MultiWindowManagerService"

    const-string/jumbo v8, "unslideAllFreeformTasksLocked is calling"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    iget v7, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-boolean v7, v5, Lcom/android/server/am/TaskRecord;->mSlideMode:Z

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string/jumbo v7, "MultiWindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unslide, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v8, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v8, v10, v10}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->slideFreeformTask(IZI)Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method private updateMultiWindowDynamicEnabledLocked(Ljava/lang/String;ZI)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    if-ne p3, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getRunningUserIds()[I

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_4

    aget v0, v1, v2

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowOffRequested(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowForceOnRequested(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-direct {p0, v7, v0}, Lcom/android/server/am/MultiWindowManagerService;->scheduleSetMultiWindowDynamicEnabled(ZI)V

    const-string/jumbo v4, "MultiWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "turn on MW[#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], Requester : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowOffRequested(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p3}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowForceOnRequested(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0, v7, p3}, Lcom/android/server/am/MultiWindowManagerService;->scheduleSetMultiWindowDynamicEnabled(ZI)V

    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turn on MW[#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], Requester : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void

    :cond_5
    if-ne p3, v1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getRunningUserIds()[I

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_4

    aget v0, v3, v1

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowForceOnRequested(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "MultiWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "force on now, turn off failed, MW[#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "], Requester : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowOffRequested(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0, v2, v0}, Lcom/android/server/am/MultiWindowManagerService;->scheduleSetMultiWindowDynamicEnabled(ZI)V

    const-string/jumbo v5, "MultiWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "turn off MW[#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "], Requester : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    invoke-direct {p0, p3}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowForceOnRequested(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "force on now, turn off failed, MW[#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], Requester : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0, p3}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowOffRequested(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v2, p3}, Lcom/android/server/am/MultiWindowManagerService;->scheduleSetMultiWindowDynamicEnabled(ZI)V

    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turn off MW[#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], Requester : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 5

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;ZLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public addGrantPermissionComponent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->addGrantPermissionComponent(Ljava/lang/String;)V

    return-void
.end method

.method public adjustForMaximumTaskDimensions(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 11

    const/4 v8, 0x1

    const/4 v10, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v7, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    iget v3, p1, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    iget v2, p1, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p1, Lcom/android/server/am/TaskRecord;->displayId:I

    invoke-virtual {v7, v9, v6}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v5

    if-eq v5, v8, :cond_2

    const/4 v7, 0x3

    if-ne v5, v7, :cond_7

    :cond_2
    const/4 v4, 0x1

    :goto_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    if-eqz v4, :cond_8

    iget v7, v6, Landroid/graphics/Point;->y:I

    :goto_1
    iput v7, v9, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    if-eqz v4, :cond_9

    iget v7, v6, Landroid/graphics/Point;->x:I

    :goto_2
    iput v7, v9, Landroid/graphics/Point;->y:I

    if-eq v3, v10, :cond_3

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-le v3, v7, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v7, Landroid/graphics/Point;->x:I

    :cond_4
    if-eq v2, v10, :cond_5

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-le v2, v7, :cond_6

    :cond_5
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v7, Landroid/graphics/Point;->y:I

    :cond_6
    iget v7, p1, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    if-le v3, v7, :cond_a

    :goto_3
    iget v7, p1, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    if-le v2, v7, :cond_b

    :goto_4
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v3, v7, :cond_c

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v2, v7, :cond_d

    const/4 v0, 0x1

    :goto_6
    if-nez v1, :cond_e

    move v7, v0

    :goto_7
    if-nez v7, :cond_f

    return-void

    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    :cond_8
    iget v7, v6, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_9
    iget v7, v6, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_a
    iget v3, p1, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    goto :goto_3

    :cond_b
    iget v2, p1, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    :cond_e
    move v7, v8

    goto :goto_7

    :cond_f
    if-eqz v1, :cond_10

    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_12

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-ne v7, v8, :cond_12

    iget v7, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    iput v7, p2, Landroid/graphics/Rect;->left:I

    :cond_10
    :goto_8
    if-eqz v0, :cond_11

    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_13

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-ne v7, v8, :cond_13

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v2

    iput v7, p2, Landroid/graphics/Rect;->top:I

    :cond_11
    :goto_9
    return-void

    :cond_12
    iget v7, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v3

    iput v7, p2, Landroid/graphics/Rect;->right:I

    goto :goto_8

    :cond_13
    iget v7, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    iput v7, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_9
.end method

.method public adjustStacksOrderLocked(IILcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I
    .locals 10

    const/4 v4, 0x0

    const/4 v0, 0x1

    sget-boolean v8, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->isFreeformStackVisibleLocked()Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_6

    if-nez p3, :cond_1

    invoke-virtual {p4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object p3

    :cond_1
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v8, v8, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getNextFocusableStackLocked()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    iget v8, p4, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_9

    const/4 v3, 0x1

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v3, :cond_5

    :cond_4
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v8

    if-eqz v8, :cond_c

    if-eqz v3, :cond_c

    :cond_5
    const/4 v0, 0x0

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v8, v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setFreeformStackTemporaryVisibilityLocked(Z)V

    :goto_2
    if-eqz v0, :cond_6

    move p1, p2

    :cond_6
    sget-boolean v8, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mRequestFreefomInvisible:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mRequestFreefomInvisible:Z

    invoke-direct {p0, p3}, Lcom/android/server/am/MultiWindowManagerService;->prepareAppTransitionIfNeeded(Lcom/android/server/am/TaskRecord;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 p1, -0x1

    :cond_7
    return p1

    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    :cond_9
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    :cond_a
    if-eqz v4, :cond_2

    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v8, :cond_2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_b
    const/4 v3, 0x1

    goto :goto_1

    :cond_c
    const/4 v0, 0x1

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v8, v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setFreeformStackTemporaryVisibilityLocked(Z)V

    invoke-direct {p0, p2, v5}, Lcom/android/server/am/MultiWindowManagerService;->moveFreeformStackToTopLocked(ILcom/android/server/am/ActivityStack;)I

    move-result p2

    goto :goto_2
.end method

.method public alignTasksToStackBounds()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "alignTasksToStackBounds()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v10

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public applyDexCompatConfigurationLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 14

    iget-boolean v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v11, :cond_2

    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_2

    const/4 v5, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v11, :cond_1

    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->dexCompatEnabled:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    const/4 v3, 0x1

    :cond_0
    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    const/4 v5, 0x2

    :cond_1
    if-eqz v3, :cond_4

    move-object/from16 v0, p2

    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    const/4 v11, 0x2

    move-object/from16 v0, p2

    iput v11, v0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-direct {p0, v12, v11, v13}, Lcom/android/server/am/MultiWindowManagerService;->getTopActivityByPackageLocked(ILjava/lang/String;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_0

    :cond_4
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x1

    if-ne v5, v11, :cond_5

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    :goto_2
    invoke-direct {v10, v11}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iget v11, v10, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v12, v0, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v11, v12

    int-to-float v11, v11

    const v12, 0x3bcccccd    # 0.00625f

    mul-float/2addr v11, v12

    float-to-int v7, v11

    iget v11, v10, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p2

    iget v12, v0, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v11, v12

    int-to-float v11, v11

    const v12, 0x3bcccccd    # 0.00625f

    mul-float/2addr v11, v12

    float-to-int v6, v11

    move-object/from16 v0, p2

    iget v11, v0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v11}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v9

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    move-object/from16 v0, p2

    iput v7, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p2

    iput v6, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move-object/from16 v0, p2

    iput v8, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v0, p2

    iput v5, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v9, v4, v8}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v11

    move-object/from16 v0, p2

    iput v11, v0, Landroid/content/res/Configuration;->screenLayout:I

    const/4 v11, 0x2

    move-object/from16 v0, p2

    iput v11, v0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    goto :goto_1

    :cond_5
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

    goto :goto_2
.end method

.method public applyFreeformMinimizePolicyLocked(I)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCoolDownFreeformRequested:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->minimizeOhterFreeformsLocked(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->minimizeMaxCountingFreeformLocked(I)V

    goto :goto_0
.end method

.method public changeFreeformMode()V
    .locals 9

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->getIndexOfFreeformStackLocked()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->isFreeformStackVisibleLocked()Z

    move-result v4

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "MultiWindowManagerService"

    const-string/jumbo v6, "changeFreeformMode: Unminimize FreeformStack"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/am/MultiWindowManagerService;->setFreeformStackVisibilityLocked(Z)V

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "changeFreeformMode_unminimize"

    invoke-virtual {v4, v3, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v5

    :cond_2
    return-void

    :cond_3
    :try_start_1
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "MultiWindowManagerService"

    const-string/jumbo v6, "changeFreeformMode: Minimize FreeformStack"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/MultiWindowManagerService;->setFreeformStackVisibilityLocked(Z)V

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowManagerService;->moveFreeformStackToBottomLocked(Lcom/android/server/am/ActivityStack;)V

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-ne v4, v1, :cond_5

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getNextFocusableStackLocked()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "freeformModeChanged_minimize"

    invoke-virtual {v4, v3, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_6
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v6, "changeFreeformMode_minimize"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method changeIsDexModeTask(Z)V
    .locals 7

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    :goto_1
    if-ltz v5, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iput-boolean p1, v4, Lcom/android/server/am/TaskRecord;->mIsDexModeTask:Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public checkLaunchPolicyLocked(Landroid/content/pm/ActivityInfo;)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-boolean v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v9

    iget-object v10, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10, p1}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v3

    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_2

    const/4 v6, 0x1

    :goto_0
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_3

    const/4 v5, 0x1

    :goto_1
    and-int/lit16 v9, v3, 0x80

    if-eqz v9, :cond_4

    const/4 v4, 0x1

    :goto_2
    const v9, 0x8000

    and-int/2addr v9, v3

    if-eqz v9, :cond_5

    const/4 v1, 0x1

    :goto_3
    if-nez v6, :cond_0

    if-nez v5, :cond_0

    if-eqz v4, :cond_8

    :cond_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    sget v8, Lcom/samsung/android/framework/res/R$string;->multiwindow_desktop_policy_text_cant_run_doesnt_support_multiwindow:I

    if-eqz v5, :cond_7

    sget v8, Lcom/samsung/android/framework/res/R$string;->multiwindow_desktop_policy_text_cant_run_for_phone_touch_screen:I

    :cond_1
    :goto_5
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v2, v10, v11

    invoke-virtual {v9, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v10, Lcom/android/server/am/MultiWindowManagerService$4;

    invoke-direct {v10, p0, v7}, Lcom/android/server/am/MultiWindowManagerService$4;-><init>(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    return v12

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    const-string/jumbo v2, ""

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_1

    sget v8, Lcom/samsung/android/framework/res/R$string;->multiwindow_desktop_policy_text_cant_run_for_phone_home_screen:I

    goto :goto_5

    :cond_8
    if-eqz v1, :cond_9

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/framework/res/R$string;->multiwindow_forced_resizable_samsung_dex_for_game:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v10, Lcom/android/server/am/MultiWindowManagerService$5;

    invoke-direct {v10, p0, v7}, Lcom/android/server/am/MultiWindowManagerService$5;-><init>(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    return v11

    :cond_9
    return v11
.end method

.method public checkRunningFreeformWithLoggingLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 20

    sget-boolean v18, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v18, :cond_e

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    if-eqz v6, :cond_e

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->getStackBehindFreeformLocked()Lcom/android/server/am/ActivityStack;

    move-result-object v14

    if-ne v9, v14, :cond_2

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_3

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    :cond_3
    if-eqz v8, :cond_a

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string/jumbo v19, "|"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    :cond_4
    const-string/jumbo v18, "null"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string/jumbo v19, "|"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_1
    const/16 v17, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v10, v18, -0x1

    :goto_2
    if-ltz v10, :cond_d

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    move/from16 v18, v0

    if-nez v18, :cond_7

    const/4 v12, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    :cond_6
    :goto_3
    if-eqz v12, :cond_7

    add-int/lit8 v17, v17, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string/jumbo v19, "|"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    :cond_8
    add-int/lit8 v13, v13, 0x1

    :cond_9
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    :cond_a
    const-string/jumbo v18, "null"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string/jumbo v19, "|"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_b
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string/jumbo v19, "|"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_c
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    if-eqz v15, :cond_6

    iget-object v12, v15, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_3

    :cond_d
    if-lez v13, :cond_e

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v5, v0, [Ljava/lang/String;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v4, v0, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    const-string/jumbo v18, "DFCO"

    const/16 v19, 0x0

    aput-object v18, v5, v19

    const-string/jumbo v18, "DFPA"

    const/16 v19, 0x1

    aput-object v18, v5, v19

    :goto_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " | "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v4, v19

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v4, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    :cond_e
    return-void

    :cond_f
    const-string/jumbo v18, "FFCO"

    const/16 v19, 0x0

    aput-object v18, v5, v19

    const-string/jumbo v18, "FFPA"

    const/16 v19, 0x1

    aput-object v18, v5, v19

    goto :goto_4
.end method

.method public completeToggleSplitScreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->completeToggleSplitScreen()V

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Z)V
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p2, :cond_0

    const-string/jumbo v5, "-------------------------------------------------------------------------------"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v5, "MULTI WINDOW MANAGER SERVICE"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    mIsMinimizeContainerServiceRunning="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v5, "    * History"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerSerivceHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_2

    const/16 v1, 0x64

    :goto_0
    if-lt v2, v1, :cond_1

    sub-int v3, v2, v1

    :cond_1
    move v0, v3

    :goto_1
    if-ge v0, v2, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "      #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerSerivceHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-static {}, Landroid/app/ActivityManager;->supportsMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "    MultiWindowEnabled"

    :goto_2
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "    DesktopModeEnabled"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    DexCompat: port="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": land="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": captionHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mDecorCaptionWindowHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MWOffRequester[u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const-string/jumbo v5, "    MultiWindowDisabled"

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_4
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MWOffRequesterLog[u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    const-string/jumbo v4, "MWOffRequestersForAllUsers : "

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_8
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    const-string/jumbo v4, "MWOffRequestersLogForAllUsers : "

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_9
    const/4 v0, 0x0

    :goto_5
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MWForceOnRequester[u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_6
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MWForceOnRequesterLog[u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c

    const-string/jumbo v4, "MWForceOnRequestersForAllUsers : "

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_c
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    const-string/jumbo v4, "MWForceOnRequestersLogForAllUsers : "

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public ensureDockedResize(Landroid/graphics/Rect;Z)V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedMode:Z

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG_ENSURE_DOCKEDVIEW:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MultiWindowManagerService_EnsureDockedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adjustForIme : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ensureBounds : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-boolean v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedMode:Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedMode:Z

    throw v0
.end method

.method public ensureDockedStackVisible()V
    .locals 5

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public enterFreeformTask(I)V
    .locals 6

    const/4 v3, 0x1

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_2

    if-eq p1, v3, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;

    iget v2, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v0, v5, v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;-><init>(IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public exitMultiWindow(Landroid/os/IBinder;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v8, "exitMultiWindow"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_7

    :try_start_1
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v7, v7, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v7, :cond_2

    :cond_0
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v7, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityManagerService;->exitFreeformMode(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->mFullscreen:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    return v4

    :cond_2
    :try_start_3
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "MultiWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "exitMultiWindow :: It is already fullscreen, r="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->mFullscreen:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v6

    return v4

    :cond_4
    :try_start_5
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v7

    if-ne v7, v9, :cond_5

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/MultiWindowManagerService;->moveDockedTasksToFullscreenStack(ZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->mFullscreen:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v6

    return v4

    :cond_5
    move v4, v5

    goto :goto_1

    :cond_6
    :try_start_7
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :cond_7
    monitor-exit v6

    return v5

    :catchall_1
    move-exception v4

    monitor-exit v6

    throw v4
.end method

.method public getBoundsInDeXFromRecentTasks(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .locals 9

    const/4 v8, 0x0

    iget-boolean v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v6, :cond_4

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_4

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v6}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v6, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Lcom/android/server/am/TaskRecord;->userId:I

    iget v7, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v6, v7, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    iget-boolean v6, v5, Lcom/android/server/am/TaskRecord;->mIsDexModeTask:Z

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_0

    iget-boolean v6, v5, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    iput-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    const/4 v3, 0x0

    iget-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_3

    new-instance v3, Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v5, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_1
    invoke-static {v3}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    return-object v6

    :cond_3
    iget-object v3, v5, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_4
    return-object v8
.end method

.method public getDecorCaptionWindowHeight()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDecorCaptionWindowHeight:I

    return v0
.end method

.method public getFreeformTasks(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "android.permission.REAL_GET_TASKS"

    const-string/jumbo v4, "getFreeformTasks()"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, p1}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getImeTargetFreeformTaskId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getImeTargetFreeformTaskId()I

    move-result v0

    return v0
.end method

.method public getIndexOfFreeformStackLocked()I
    .locals 6

    const/4 v1, -0x1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v4, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    iget v4, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v0

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getMaxMultiInstanceCnt()I
    .locals 2

    const/4 v1, -0x1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIINSTANCE_SUPPORT:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getMaxTaskDimensions(Landroid/graphics/Point;Landroid/content/pm/ActivityInfo;)V
    .locals 7

    const v6, 0x3bcccccd    # 0.00625f

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.samsung.android.sdk.multiwindow.maxWidth"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.samsung.android.sdk.multiwindow.maxHeight"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v4, Landroid/content/res/Configuration;->densityDpi:I

    if-gez v2, :cond_1

    const/4 v2, -0x1

    :goto_0
    if-gez v1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Point;->set(II)V

    :cond_0
    return-void

    :cond_1
    mul-int v4, v2, v0

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v2, v4

    goto :goto_0

    :cond_2
    mul-int v3, v1, v0

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v1, v3

    goto :goto_1
.end method

.method public getMinTaskDimensions(Landroid/graphics/Point;Landroid/content/pm/ActivityInfo;)V
    .locals 7

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v3, :cond_1

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v2, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v3

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-lez v3, :cond_0

    if-gez v2, :cond_2

    const/4 v2, -0x1

    :goto_0
    if-gez v1, :cond_3

    const/4 v1, -0x1

    :cond_0
    :goto_1
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Point;->set(II)V

    :cond_1
    return-void

    :cond_2
    int-to-float v3, v2

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v2, v3

    goto :goto_0

    :cond_3
    int-to-float v3, v1

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v1, v3

    goto :goto_1
.end method

.method public getMultiInstanceCntLocked(Lcom/android/server/am/ActivityRecord;)I
    .locals 21

    if-nez p1, :cond_0

    const/16 v19, 0x0

    return v19

    :cond_0
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStack;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v19

    if-nez v19, :cond_1

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    new-instance v3, Landroid/content/ComponentName;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    if-eqz v6, :cond_4

    const/16 v19, 0x1

    :goto_0
    invoke-virtual {v6}, Landroid/content/Intent;->isDocument()Z

    move-result v20

    and-int v7, v19, v20

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    :goto_1
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v17, v19, -0x1

    :goto_2
    if-ltz v17, :cond_1

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    :cond_3
    :goto_3
    add-int/lit8 v17, v17, -0x1

    goto :goto_2

    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    iget v0, v13, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-boolean v0, v9, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    iget v0, v9, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    iget v0, v9, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    iget v0, v9, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    iget-object v15, v13, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget-object v2, v13, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Landroid/content/Intent;->isDocument()Z

    move-result v19

    if-eqz v19, :cond_8

    const/16 v16, 0x1

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    :goto_4
    if-nez v7, :cond_7

    if-eqz v16, :cond_a

    :cond_7
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    if-eqz v19, :cond_b

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v19

    if-nez v19, :cond_b

    invoke-static {v4, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    move-result v19

    if-eqz v19, :cond_9

    const/16 v16, 0x1

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    goto :goto_4

    :cond_9
    const/16 v16, 0x0

    const/4 v14, 0x0

    goto :goto_4

    :cond_a
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->canMatchRootAffinity()Z

    move-result v19

    if-eqz v19, :cond_7

    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_b
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v19

    if-nez v19, :cond_3

    invoke-static {v4, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_c
    return v8
.end method

.method public getMultiWindowModeStates(I)I
    .locals 6

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    const/4 v3, 0x4

    :goto_0
    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    move v0, v3

    :try_start_0
    invoke-static {v3, p1}, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->getStackIdAdjustedToDisplayId(II)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :pswitch_0
    or-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_1
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    :pswitch_2
    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_1
    monitor-exit v5

    return v1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMultiWindowSettingsLocked(I)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowSettingsObserver:Lcom/android/server/am/MultiWindowSettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowSettingsObserver;->getMultiWindowSettingsLocked(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getOppositeMultiWindowStackId(I)I
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    if-eqz v2, :cond_1

    :cond_0
    return v6

    :cond_1
    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_2

    if-eqz p1, :cond_2

    return v6

    :cond_2
    if-ne p1, v5, :cond_4

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_3

    return v4

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_4
    if-eq p1, v4, :cond_5

    if-nez p1, :cond_0

    :cond_5
    return v5
.end method

.method public getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
    .locals 9

    const/4 v8, 0x0

    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :cond_1
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    if-nez v4, :cond_2

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :cond_2
    :try_start_7
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v5, v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getSnapTargetAspectRatioRect(Landroid/os/IBinder;)Landroid/graphics/Rect;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v5

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :catchall_0
    move-exception v5

    :try_start_9
    monitor-exit v6

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_3
    return-object v8
.end method

.method public getStackBehindFreeformLocked()Lcom/android/server/am/ActivityStack;
    .locals 5

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v1, v0

    :cond_0
    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    :goto_1
    return-object v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getStackIdsShowWhenLocked()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getStackIdsShowWhenLocked()I

    move-result v0

    return v0
.end method

.method public getSupportScreenBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->getRequestedOrientation(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/MultiWindowManagerService;->getSupportScreenBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method public getTopRunningTaskInfo(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "android.permission.REAL_GET_TASKS"

    const-string/jumbo v5, "getTopRunningTaskInfo()"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v0, v3, v5, v6}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZI)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public hasDockedStack()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->hasDockedStack()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadResources()V

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->readGrantPermissionComponents()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerService:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.app.multiwindow"

    const-string/jumbo v4, "com.samsung.android.app.multiwindow.minimizecontainer.MinimizeContainerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.COOLDOWN_FREEFORM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCoolDownFreeformReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsFactoryBinary:Z

    return-void
.end method

.method initMultiWindowDynamicEnable(I)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "mobile_keyboard"

    invoke-static {v2, v4, v6, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MultiPhoneWindowManager : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " reason : mobile_keyboard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowForceOnRequested(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x1

    :cond_1
    :goto_3
    invoke-direct {p0, v3, p1}, Lcom/android/server/am/MultiWindowManagerService;->setMultiWindowDynamicEnabled(ZI)V

    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowOffRequested(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_3
.end method

.method initMultiWindowSettings(I)V
    .locals 14

    const/4 v10, 0x0

    const/4 v13, -0x1

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v11, "set_multiwindow_feature_list"

    invoke-static {v7, v11, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    const/4 v4, 0x1

    :goto_0
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string/jumbo v12, "android.software.freeform_window_management"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v4, :cond_4

    const-string/jumbo v11, "set_multiwindow_feature_list"

    const-string/jumbo v12, "multiwindow_enabled,freeform_density_change,freeform_focused_frame,freeform_guide_resize"

    invoke-static {v7, v11, v12, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    sget-boolean v11, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "MultiWindowManagerService"

    const-string/jumbo v12, "initMultiWindowSettings: multiwindow_enabled,freeform_density_change,freeform_focused_frame,freeform_guide_resize"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v11, "set_multiwindow_feature_list"

    invoke-static {v7, v11, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->parseSettingDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x11200b0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    :goto_1
    const-string/jumbo v11, "db_popup_view_shortcut"

    invoke-static {v7, v11, v13, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-eq v11, v13, :cond_8

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    const-string/jumbo v11, "db_popup_view_shortcut"

    invoke-static {v7, v11, v10, p1}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    if-eqz v9, :cond_9

    if-eqz v3, :cond_9

    :try_start_0
    const-string/jumbo v10, "freeform_support"

    invoke-static {v10, v6}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->addSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    :goto_3
    if-eqz v9, :cond_2

    const-string/jumbo v10, "multiinstance_support"

    invoke-static {v10, v6}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->addSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v10

    or-int/2addr v0, v10

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v6}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->makeSettingDB(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "set_multiwindow_feature_list"

    invoke-static {v7, v10, v8, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    sget-boolean v10, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "MultiWindowManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "initMultiWindowSettings: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v11

    :cond_4
    const-string/jumbo v10, "set_multiwindow_feature_list"

    invoke-static {v7, v10, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_5

    invoke-static {v1}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->parseSettingDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string/jumbo v10, "freeform_guide_resize"

    invoke-static {v10, v6}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->addSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v6}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->makeSettingDB(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "set_multiwindow_feature_list"

    invoke-static {v7, v10, v8, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string/jumbo v10, "MultiWindowManagerService"

    const-string/jumbo v11, "initMultiWindowSettings: add GuideResize"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_8
    move v2, v10

    goto :goto_2

    :cond_9
    :try_start_1
    const-string/jumbo v10, "freeform_support"

    invoke-static {v10, v6}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->removeSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    const-string/jumbo v10, "freeform_ghost_mode"

    invoke-static {v10, v6}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->removeSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v10

    or-int/2addr v0, v10

    const-string/jumbo v10, "freeform_slide_mode"

    invoke-static {v10, v6}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->removeSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    or-int/2addr v0, v10

    goto :goto_3

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method public isAllTaskHiddenLocked(Lcom/android/server/am/ActivityStack;Z)Z
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

    if-eq v1, v3, :cond_0

    :cond_1
    iget v3, v1, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v3, :cond_0

    return v4

    :cond_2
    const/4 v3, 0x1

    return v3

    :cond_3
    return v4
.end method

.method public isAppToBlockFloatingMultiWindows(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoResizingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizingEnabled:Z

    return v0
.end method

.method public isDeferResumeTopActivityLocked()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferResume:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopModeEnabledOnEarly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    return v0
.end method

.method public isDexCompatConfigurationTargetLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/ActivityRecord;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v3, :cond_5

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    if-nez p2, :cond_2

    invoke-virtual {v0, p1, v4}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v1

    :cond_0
    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    iget v3, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    if-nez v3, :cond_3

    invoke-virtual {v0, p1, v4}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v3

    iput v3, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    :cond_3
    iget v1, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, v3}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public isEnsureDockedMode()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedMode:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExpandedDockedStack()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isExpandedDockedStack()Z

    move-result v0

    return v0
.end method

.method public isForceResizable(Landroid/content/pm/ActivityInfo;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.sec.android.support.multiwindow"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_3

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiwindowSupportList:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    return v2

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isFreeformStackVisibleLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformAlwaysVisible:Z

    return v0
.end method

.method public isGamePackage(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->GAME_TUNER_ENABLED:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->initGameManagerService()V

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v3, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    :goto_0
    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIINSTANCE_SUPPORT:Z

    if-eqz v2, :cond_9

    if-nez p1, :cond_0

    return v4

    :cond_0
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_7

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->initMultiInstanceSettings()V

    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v2, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    if-eqz v0, :cond_5

    const-string/jumbo v2, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_8

    const-string/jumbo v2, "singleTask"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "singleInstance"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    return v5

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    return v5

    :cond_9
    return v4
.end method

.method public isMinTaskDimensionsChangedLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v1, v0, v6}, Lcom/android/server/am/MultiWindowManagerService;->getTaskDimensions(Landroid/content/pm/ActivityInfo;Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStack;->getDisplaySize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-le v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    :goto_0
    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    :goto_1
    iput v1, v0, Landroid/graphics/Point;->y:I

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    if-ne v1, v4, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    if-eq v1, v4, :cond_3

    :cond_0
    move v1, v2

    :goto_2
    return v1

    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    return v3
.end method

.method public isMovingMultiWindowTasksToFullScreenLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMultiWindowTasksToFullScreen:Z

    return v0
.end method

.method public isSnapWindowRunning()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mSnapWindowRunning:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTaskOrientationChangedLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_3

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->convertToConfigurationOrientation(I)I

    move-result v0

    if-nez v0, :cond_0

    return v8

    :cond_0
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-boolean v6, v3, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v6, :cond_1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6, v2}, Lcom/android/server/am/ActivityStack;->getRealDisplaySize(Landroid/graphics/Point;)V

    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v8, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v6, v7, :cond_2

    const/4 v4, 0x2

    :goto_1
    if-eq v4, v0, :cond_3

    return v5

    :cond_1
    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    return v8
.end method

.method public isVisibleStackBehindFreeformLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Z
    .locals 13

    sget-boolean v11, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v11, :cond_e

    if-eqz p1, :cond_0

    iget v11, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    :cond_0
    const/4 v11, 0x0

    return v11

    :cond_1
    iget-boolean v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-boolean v11, v7, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v11, :cond_2

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->hasVisibleFullscreenActivityLocked()Z

    move-result v11

    if-eqz v11, :cond_2

    iget v11, v7, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v11, :cond_2

    const/4 v11, 0x0

    return v11

    :cond_3
    sget-boolean v11, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->isFreeformStackVisibleLocked()Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x0

    return v11

    :cond_4
    iget-object v11, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v5, v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_5

    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object p1, v11, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    :cond_5
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v11, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    :goto_0
    if-ltz v2, :cond_6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    iget v11, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v11, :cond_7

    :cond_6
    :goto_1
    if-lez v3, :cond_e

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    if-nez v1, :cond_9

    const/4 v11, 0x0

    return v11

    :cond_7
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    iget v11, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    move v3, v2

    goto :goto_1

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_9
    add-int/lit8 v11, v3, -0x1

    if-lez v11, :cond_b

    iget v11, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_a

    invoke-direct {p0, v1, p2}, Lcom/android/server/am/MultiWindowManagerService;->isStackTranslucent(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_a
    add-int/lit8 v11, v3, -0x2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    :cond_b
    if-eq p1, v1, :cond_c

    if-ne p1, v4, :cond_d

    :cond_c
    const/4 v11, 0x1

    :goto_2
    return v11

    :cond_d
    const/4 v11, 0x0

    goto :goto_2

    :cond_e
    const/4 v11, 0x0

    return v11
.end method

.method public logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public logSnapWindowComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_0

    new-array v1, v5, [Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SNBY"

    aput-object v2, v1, v3

    aput-object p1, v0, v3

    const-string/jumbo v2, "SNPK"

    aput-object v2, v1, v4

    aput-object p2, v0, v4

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public logSplitWindowComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_0

    new-array v1, v6, [Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v3, "SPBY"

    aput-object v3, v1, v4

    aput-object p1, v0, v4

    const-string/jumbo v3, "SPPA"

    aput-object v3, v1, v5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    aput-object v3, v0, v5

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    aput-object v7, v0, v5

    goto :goto_0
.end method

.method public makeGhostFreeform(Landroid/os/IBinder;I)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->makeGhostFreeformLocked(Landroid/os/IBinder;I)V

    :cond_0
    return-void
.end method

.method public maximizeStackByDivider(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MultiWindowManagerService;->moveDockedTasksToFullscreenStack(ZZ)V

    return-void
.end method

.method public maximizeTopTask()Z
    .locals 5

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v3

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "MultiWindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[bixby] maximizeTopTask() taskId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  topActivity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v2}, Lcom/android/server/am/MultiWindowManagerService;->exitMultiWindow(Landroid/os/IBinder;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "MultiWindowManagerService"

    const-string/jumbo v3, "[bixby] unable to maximize app."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public minimizeAllFreeform(I)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mRequestFreefomInvisible:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->setFreeformStackVisibilityLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    :cond_0
    return-void

    :cond_1
    if-lez p1, :cond_2

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->minimizeOhterFreeformsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->minimizeAllTasksInFreeformLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public minimizeAllTasksInFreeformLocked()V
    .locals 10

    const/4 v9, 0x0

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "MultiWindowManagerService"

    const-string/jumbo v7, "minimizeAllTasksInFreeform is calling"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v6, :cond_6

    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_a

    move v2, v1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v6, :cond_3

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_3
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v7, v3, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/UserController;->isCurrentProfileLocked(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

    if-eq v3, v6, :cond_4

    :cond_5
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    goto :goto_2

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    iget v6, v3, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v6, :cond_4

    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string/jumbo v7, "MultiWindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_9

    const-string/jumbo v6, "minimize, "

    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget v6, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v6, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZ)Z

    if-eqz v2, :cond_4

    const-string/jumbo v6, "FFAC"

    const-string/jumbo v7, "Minimize"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_2

    :cond_9
    const-string/jumbo v6, "moveback, "

    goto :goto_3

    :cond_a
    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

    goto/16 :goto_0
.end method

.method public minimizeOhterFreeforms(Landroid/os/IBinder;)V
    .locals 5

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, v3}, Lcom/android/server/am/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/am/MultiWindowManagerService;->minimizeOhterFreeformsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public minimizeTask(I)V
    .locals 4

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/MultiWindowManagerService;->moveActivityTaskToBackLocked(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public minimizeTopTask()Z
    .locals 10

    const/4 v9, 0x0

    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v5, "MultiWindowManagerService"

    const-string/jumbo v7, "[bixby] minimizeTopTask"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    const-string/jumbo v5, "MultiWindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[bixby] minimizeTopTask()  tr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v5, v4, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v5, :cond_0

    const-string/jumbo v5, "MultiWindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[bixby] minimizeTopTask() taskId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",  topActivity = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->minimizeTask(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    monitor-exit v6

    return v5

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v6

    :cond_2
    const-string/jumbo v5, "MultiWindowManagerService"

    const-string/jumbo v6, "[bixby] unable to miminize app."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z
    .locals 6

    const/4 v3, 0x0

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "moveActivityTaskToBack"

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    if-eqz p2, :cond_0

    :goto_0
    :try_start_1
    invoke-static {p1, v3}, Lcom/android/server/am/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result v2

    invoke-direct {p0, v2, p3}, Lcom/android/server/am/MultiWindowManagerService;->moveActivityTaskToBackLocked(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    return v3
.end method

.method public moveDockedTasksToFullscreenStack(ZZ)V
    .locals 14

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v10, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v11, "moveDockedTasksToFullscreenStack"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "MultiWindowManagerService"

    const-string/jumbo v11, "moveDockedTasksToFullscreenStack / DockedStack is null."

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v10

    return-void

    :cond_0
    :try_start_2
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowManagerService;->findFirstReturnToHomeTask(Ljava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v9, "MultiWindowManagerService"

    const-string/jumbo v11, "moveDockedTasksToFullscreenStack / DockedTasks has 0 tasks."

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v10

    return-void

    :cond_1
    :try_start_4
    invoke-direct {p0, v4}, Lcom/android/server/am/MultiWindowManagerService;->findFirstReturnToHomeTask(Ljava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz p1, :cond_4

    :goto_0
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-virtual {v9, v11, p1, v12}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZZ)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    if-eqz v3, :cond_2

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_2
    if-eqz p2, :cond_3

    if-eqz v8, :cond_3

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v11, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(IZZ)Z

    :cond_3
    const-string/jumbo v9, "DOOF"

    const-string/jumbo v11, "DividerCloseButton"

    invoke-virtual {p0, v9, v11}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v10

    return-void

    :cond_4
    move-object v5, v2

    goto :goto_0

    :catchall_0
    move-exception v9

    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public moveMultiWindowTasksToFullScreen()V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    const/4 v1, -0x1

    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMultiWindowTasksToFullScreen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getFocusedStackId()I

    move-result v1

    const/4 v3, 0x4

    :goto_0
    const/4 v5, 0x3

    if-lt v3, v5, :cond_1

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-ne v3, v1, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {v9, v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :goto_2
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->scheduleClearReplacingWindowIfNeeded(Landroid/os/IBinder;Z)V

    :cond_2
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    :cond_3
    :goto_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMultiWindowTasksToFullScreen:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v8

    throw v5

    :catchall_1
    move-exception v5

    :try_start_5
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v5

    :cond_4
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v6, 0xb

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->prepareAppTransitionIfNeeded(I)V

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public moveProfileTasksToBackLocked(I)V
    .locals 9

    iget-boolean v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v7, v6, p1}, Lcom/android/server/am/ActivityStackSupervisor;->taskContainsActivityFromUser(Lcom/android/server/am/TaskRecord;I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget v6, v4, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "MultiWindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveProfileTasksBack, tr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZ)Z

    goto :goto_1

    :cond_5
    return-void
.end method

.method public notifyActivityStackAttachedLocked(II)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyActivityStackDetachedLocked(II)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyApplyFreeformMinimizePolicy(I)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyApplyFreeformMinimizePolicy ::  taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public notifyDockedStackMinimizedChange(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyFreeformMinimizeStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;II)V
    .locals 4

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFreefromWindowAnimationEnd(IILandroid/graphics/Rect;)V
    .locals 4

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyLastDockTaskToBackTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyMultiWindowAppTransitionFinishedLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyMultiWindowFocusedChangeLocked(Ljava/lang/String;)V
    .locals 11

    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_0
    if-eqz v2, :cond_0

    if-nez v4, :cond_2

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v8, v2, :cond_3

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastFocusedTr:Lcom/android/server/am/TaskRecord;

    if-eq v8, v4, :cond_0

    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v8, v4, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    if-eq v8, v10, :cond_4

    const-string/jumbo v8, "mMinHeight"

    iget v9, v4, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget v8, v4, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    if-eq v8, v10, :cond_5

    const-string/jumbo v8, "mMinWidth"

    iget v9, v4, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    iget v8, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v8}, Lcom/android/server/am/MultiWindowManagerService;->getOppositeMultiWindowStackId(I)I

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v8, "isOppositeTaskRecents"

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    const-string/jumbo v8, "isLandscape"

    iget v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    :goto_1
    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastFocusedTr:Lcom/android/server/am/TaskRecord;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, v2, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v2, v6}, Lcom/android/server/am/ActivityStack;->getDisplaySize(Landroid/graphics/Point;)V

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v7, v7, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-nez v6, :cond_9

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iget v6, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    iput v6, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_7
    move v6, v7

    goto :goto_1

    :cond_8
    iget-object v6, v2, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_9
    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method public notifyProcessKillByClosingFreeform(I)V
    .locals 3

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public notifyScreenFreezeAnimationFinished()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConfigurationChangedLocked(I)V
    .locals 23

    const/4 v15, 0x0

    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsFactoryBinary:Z

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->loadResources()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    invoke-interface {v1, v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->updateFreeformRoundedDim(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    if-eqz v11, :cond_1

    if-eqz v15, :cond_d

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v1, :cond_12

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    if-eqz v10, :cond_11

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->setTaskDimensions(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    const/16 v16, 0x1

    :goto_2
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending()Z

    move-result v14

    if-eqz v16, :cond_3

    if-nez v14, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v1, :cond_0

    if-nez v16, :cond_0

    :cond_4
    if-eqz v16, :cond_9

    move v1, v14

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v1, :cond_a

    :cond_5
    const/4 v15, 0x0

    :goto_4
    sget-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigurationChanged, DesktopMode enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->initMultiInstanceSettings()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v1, :cond_b

    const-string/jumbo v1, "desktop_on"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->changeIsDexModeTask(Z)V

    :goto_5
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->GAME_TUNER_ENABLED:Z

    if-eqz v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->initGameManagerService()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    invoke-interface {v1, v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->updateFreeformRoundedDim(Z)V

    const-string/jumbo v2, "MultiWindowManager"

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "Desktop On"

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->setMultiWindowForceEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_a
    const/4 v15, 0x1

    goto :goto_4

    :cond_b
    const-string/jumbo v1, "desktop_off"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->changeIsDexModeTask(Z)V

    goto :goto_5

    :cond_c
    const-string/jumbo v1, "Desktop Off"

    goto :goto_6

    :cond_d
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    int-to-float v2, v2

    div-float v18, v1, v2

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_e
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_f

    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Last non fullscreenBounds is null, skip scale bounds by density change, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_f
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->scale(F)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->setTaskDimensions(Lcom/android/server/am/ActivityRecord;)V

    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->isValidTaskId(I)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "override config is empty, skip scale bounds by density change, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->resizeTask(ILandroid/graphics/Rect;Landroid/content/res/Configuration;ZZ)V

    goto/16 :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v13

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->setTaskDimensions(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    if-eqz v9, :cond_13

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->setTaskDimensions(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    if-eqz v12, :cond_13

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->setTaskDimensions(Lcom/android/server/am/ActivityRecord;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    :cond_14
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x1880

    if-eqz v1, :cond_16

    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentOrientation:I

    :cond_15
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v1, :cond_16

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->getDisplayByStackId(I)Landroid/view/Display;

    move-result-object v8

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->getTaskPositionerByStackId(I)Lcom/android/server/am/LaunchingTaskPositioner;

    move-result-object v21

    if-eqz v21, :cond_16

    if-eqz v8, :cond_16

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/server/am/LaunchingTaskPositioner;->setDisplay(Landroid/view/Display;)V

    const/4 v1, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->configure(Landroid/graphics/Rect;)V

    :cond_16
    return-void
.end method

.method protected onMultiWindowSettingsChange(Landroid/os/Bundle;I)V
    .locals 7

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v5, p1}, Landroid/app/ActivityThread;->onMultiWindowSettingsChange(Landroid/os/Bundle;)I

    move-result v0

    const/high16 v5, 0x20000

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->retrieveMultiWindowSettings()V

    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    invoke-direct {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->notifyMultiWindowSettingChanged(Z)V

    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "mw_on"

    invoke-direct {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget v5, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v6, :cond_2

    iget v5, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v5, p2, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    iget v5, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v5, :cond_4

    const-string/jumbo v5, "com.android.systemui"

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    :try_start_0
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v5, p1}, Landroid/app/IApplicationThread;->setMultiWindowSettings(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "mw_off"

    invoke-direct {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-void

    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public postMoveTaskToStackLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/MultiWindowManagerService;->movePausingActivityIfNeededLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/MultiWindowManagerService;->moveLruActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method public registerMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->registerMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V

    return-void
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerMultiWindowFocusedFrameListener(Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string/jumbo v2, "registerMultiWindowFocusedFrameListener()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->registerMultiWindowFocusedFrameListener(Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeFocusedTask()Z
    .locals 10

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    const-string/jumbo v5, "MultiWindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[bixby] removeFocusedTask freeformStack = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "MultiWindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[bixby] removeFocusedTask = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return v9

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "MultiWindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[bixby] removeFocusedTask = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v7, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return v9

    :cond_3
    :try_start_2
    const-string/jumbo v5, "MultiWindowManagerService"

    const-string/jumbo v7, "[bixby] There is no FocesedTask!! "

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit v6

    const/4 v5, 0x0

    return v5

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public removeFreeformTasks(I)V
    .locals 12

    const/4 v11, 0x1

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "android.permission.REMOVE_TASKS"

    const-string/jumbo v8, "removeFreeformTasks()"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_1

    iget v6, v4, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-ne v6, v11, :cond_0

    :cond_1
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, v4, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_2
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v8, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(IZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_3
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v7

    return-void
.end method

.method public removeSearchedTask(Ljava/lang/String;)Z
    .locals 14

    const/4 v13, 0x0

    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_6

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_0
    sget-boolean v9, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "MultiWindowManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeSearchedTask, packageName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", caller="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x5

    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_4

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-boolean v9, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string/jumbo v9, "MultiWindowManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeSearchedTask, task="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v11, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x1

    monitor-exit v10

    return v9

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    monitor-exit v10

    :cond_6
    return v13

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public removeTaskIfNeeded(Z)Z
    .locals 14

    const/4 v10, 0x1

    const/4 v13, 0x0

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v11, "android.permission.REMOVE_TASKS"

    const-string/jumbo v12, "removeTaskIfNeeded()"

    invoke-virtual {v9, v11, v12}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    :try_start_1
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v1

    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v1}, Lcom/android/server/am/MultiWindowManagerService;->dockSideTopLeft(I)Z

    move-result v9

    if-ne v9, p1, :cond_0

    const/4 v9, 0x3

    :goto_0
    invoke-virtual {v12, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-nez v6, :cond_1

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v11

    return v13

    :cond_0
    move v9, v10

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    invoke-virtual {v12, v9}, Lcom/android/server/am/ActivityStackSupervisor;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    if-le v0, v10, :cond_4

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v12, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v12}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v11

    return v10

    :cond_4
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v11

    return v13

    :catchall_0
    move-exception v9

    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v9

    monitor-exit v11

    throw v9
.end method

.method public reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public restoreFullscreenStateLocked(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    if-eq v2, p2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget-object v4, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-object v4, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "MultiWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreFullscreenState: task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " moveHomeStackToFront="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreFullscreenState("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    :goto_1
    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->isDockedStackVisibleLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "MultiWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreFullscreenState: docked visible, full task is unresizable, tr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreFullscreenState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_1
.end method

.method public rotateFreeformTask(Landroid/os/IBinder;)V
    .locals 13

    iget-boolean v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v8, "rotateFreeformTask"

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v7, v7, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v7, v9, :cond_4

    const/4 v3, 0x1

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v7, v0, v3}, Lcom/android/server/am/MultiWindowManagerService;->getSupportScreenBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;I)V

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v0, v7, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->displayId:I

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v7, v9, v10}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v7, v0, Landroid/graphics/Rect;->left:I

    if-gez v7, :cond_5

    iget v7, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v7

    :cond_0
    :goto_1
    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-gez v7, :cond_6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v7

    :cond_1
    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v7, v9, v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    :try_start_3
    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    if-le v7, v9, :cond_0

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int v1, v7, v9

    goto :goto_1

    :cond_6
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    if-le v7, v9, :cond_1

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int v2, v7, v9

    goto :goto_2

    :catchall_0
    move-exception v7

    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public rotationAnimationStateChangedLocked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsRotationAnimating:Z

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBoundsForNewconfig:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsRotationAnimating:Z

    :cond_1
    return-void
.end method

.method public setAutoResizingEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizingEnabled:Z

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setAutoResizingEnabled(Z)V

    return-void
.end method

.method public setBoundsForNewConfig(ILandroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBoundsForNewconfig:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDividerButtonsDimLayer(ZFI)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setDividerButtonsDimLayer(ZFI)V

    return-void
.end method

.method public setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setFreeformStackVisibilityLocked(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformAlwaysVisible:Z

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setFreeformStackVisibilityLocked(Z)V

    return-void
.end method

.method public setHiddenTaskLocked(Lcom/android/server/am/TaskRecord;I)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-ne v0, p2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ne p2, v5, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v0, :cond_6

    if-ne p2, v5, :cond_6

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MultiWindowManagerService;->notifyFreeformMinimizeStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;II)V

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/am/MultiWindowManagerService;->notifyFreefromWindowAnimationEnd(IILandroid/graphics/Rect;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->forceClearMinimizeIfNeededLocked(Lcom/android/server/am/TaskRecord;)V

    :cond_4
    :goto_1
    iput p2, p1, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v1, p2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setHidden(II)V

    return-void

    :cond_5
    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v6, v7, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_6
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-ne v0, v5, :cond_7

    if-nez p2, :cond_7

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MultiWindowManagerService;->notifyFreeformMinimizeStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;II)V

    goto :goto_1

    :cond_7
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-ne v0, v5, :cond_4

    if-ne p2, v9, :cond_4

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    const/4 v5, 0x3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MultiWindowManagerService;->notifyFreeformMinimizeStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;II)V

    goto :goto_1
.end method

.method public setLaunchBounds(ILandroid/graphics/Rect;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->setLaunchBoundsLocked(ILandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setMinTaskDimensions(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->setTaskDimensions(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method public setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 14

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v10, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v11, "setMultiWindowEnabled"

    invoke-virtual {v8, v10, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    move/from16 v0, p4

    if-eq v0, v8, :cond_0

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v10, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v11, "setMultiWindowEnabled"

    invoke-virtual {v8, v10, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v8, -0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_5

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    :goto_0
    const/4 v8, -0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_6

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    :goto_1
    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v10, 0x64

    if-le v8, v10, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz p3, :cond_7

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateMultiWindowDynamicEnabledLocked(Ljava/lang/String;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    :goto_2
    :try_start_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v8, "MultiWindowManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_5
    :try_start_3
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_7
    :try_start_4
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateMultiWindowDynamicEnabledLocked(Ljava/lang/String;ZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v8

    :try_start_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v10, "MultiWindowManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v9

    return-void

    :cond_9
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public setProcessKillAfterRemovingTaskLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/TaskRecord;->mProcessKillAfterRemovingTask:Z

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setProcessKillAfterRemovingTaskLocked(I)V

    :cond_0
    return-void
.end method

.method public setSlideMode(IZ)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->setSlideModeLocked(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setSlideModeLocked(IZ)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSlideModeLocked: cannot find task, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/am/TaskRecord;->mSlideMode:Z

    if-eq v1, p2, :cond_1

    iput-boolean p2, v0, Lcom/android/server/am/TaskRecord;->mSlideMode:Z

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setSlideMode(IZ)V

    :cond_1
    return-void
.end method

.method public setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;)V
    .locals 10

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "called by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MultiWindowManagerService;->setSnapWindowLocked(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v9

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setSnapWindowLocked(ZLandroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MultiWindowManagerService;->setSnapWindowLocked(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSplitRelaunchAnimIfNeededLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v4, p1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5, v6, v7, p3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setSplitRelaunchAnimState(Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;)V

    return v7

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v5
.end method

.method public setSystemService(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setMultiWindowManagerService(Lcom/android/server/am/IMultiWindowManagerServiceBridge;)V

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->installSystemProviders()V

    return-void
.end method

.method public setTaskDimensions(Lcom/android/server/am/ActivityRecord;)V
    .locals 8

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v7, v6}, Lcom/android/server/am/MultiWindowManagerService;->getTaskDimensions(Landroid/content/pm/ActivityInfo;Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskRecord;->setMinTaskDimensions(II)V

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v6, Landroid/graphics/Point;->x:I

    iget v2, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskRecord;->setMaxTaskDimensions(II)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setTaskDimensions(IIIII)V

    :cond_0
    return-void
.end method

.method public showRecentApps()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "showRecentApps()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showSnapWindowGuideView(I)V
    .locals 14

    const/high16 v12, 0x41100000    # 9.0f

    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v9, :cond_6

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v10

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v10

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    if-nez v7, :cond_2

    monitor-exit v10

    return-void

    :cond_2
    :try_start_3
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v11, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v9, v11}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getFullScreenStackTopTaskBounds(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    if-eqz v9, :cond_3

    monitor-exit v10

    return-void

    :cond_3
    :try_start_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    const/high16 v3, -0x40800000    # -1.0f

    packed-switch p1, :pswitch_data_0

    const/high16 v3, -0x40800000    # -1.0f

    :goto_0
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_4

    monitor-exit v10

    return-void

    :pswitch_0
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_1
    const/high16 v9, 0x42400000    # 48.0f

    :try_start_5
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12, v9, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    int-to-float v3, v9

    goto :goto_0

    :pswitch_2
    int-to-float v9, v8

    mul-float/2addr v9, v12

    const/high16 v11, 0x41800000    # 16.0f

    div-float v3, v9, v11

    goto :goto_0

    :pswitch_3
    int-to-float v9, v8

    mul-float/2addr v9, v12

    const/high16 v11, 0x41a80000    # 21.0f

    div-float v3, v9, v11

    goto :goto_0

    :cond_4
    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v4, v12

    const-class v9, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v6, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "appRequest"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showSnapWindowGuideView(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    monitor-exit v10

    :cond_6
    return-void

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public slideFreeform(Landroid/os/IBinder;)V
    .locals 8

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->mSlideMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    :cond_1
    return-void

    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->slideFreeformTask(IZI)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public slideOrUnslideAllFreeform(Z)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    if-nez p1, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->isAllTaskSlidedLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->unslideAllFreeformTasksLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->slideAllFreeformTasksLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startDividerDragging()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->startDividerDragging()V

    return-void
.end method

.method public startFreeform()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "MultiWindowManagerService"

    const-string/jumbo v3, "[bixby] topActiviy is null! "

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v4

    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    :cond_2
    const-string/jumbo v1, "MultiWindowManagerService"

    const-string/jumbo v3, "[bixby] unable to freeform - unresizealbe "

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v4

    :cond_3
    :try_start_2
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "MultiWindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[bixby] startFreeform() taskId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  topActivity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/MultiWindowManagerService;->enterFreeformTask(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v5

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_4
    const-string/jumbo v1, "MultiWindowManagerService"

    const-string/jumbo v2, "[bixby] unable to freeform"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public startResizingFreeformTask(Landroid/os/IBinder;II)V
    .locals 7

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "MultiWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startResizingFreeformTask task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v3, v5, p2, p3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->startResizingFreeformTask(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public startUserLocked(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowSettingsObserver:Lcom/android/server/am/MultiWindowSettingsObserver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowSettingsObserver;->startUserLocked(IZZ)V

    return-void
.end method

.method public stopDividerDragging()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->stopDividerDragging()V

    return-void
.end method

.method public stopUserLocked(I)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowSettingsObserver:Lcom/android/server/am/MultiWindowSettingsObserver;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/am/MultiWindowSettingsObserver;->stopUserLocked(IZ)V

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public suspendResize(ILandroid/graphics/Rect;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isOrientationChanging()Z

    move-result v2

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mBoundsForNewconfig:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v4, v6}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isStackAdjustedForIme(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_4

    const/4 v1, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_6

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v3, v1

    :cond_2
    :goto_2
    return v3

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mBoundsForNewconfig:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public systemBooted()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/am/MultiWindowManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowManagerService$3;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    return-void
.end method

.method public unminimizeAllTasksInFreeformLocked()V
    .locals 14

    const/4 v13, 0x2

    const/4 v3, 0x0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "MultiWindowManagerService"

    const-string/jumbo v2, "unminimizeAllTasksInFreeform is calling."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    iget v0, v8, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v0, v13, :cond_3

    move-object v6, v8

    :cond_4
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v0, v13, :cond_5

    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unminimize, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_7

    iget-object v4, v7, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :goto_1
    const-string/jumbo v5, "unminimizeAllTasksInFreeform"

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v4, v3

    goto :goto_1
.end method

.method public unregisterMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->unregisterMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V

    return-void
.end method

.method public unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateDexCompatEnabled(Lcom/android/server/am/TaskRecord;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateDexCompatEnabled(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method public updateDexCompatEnabled(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    iget v2, p1, Lcom/android/server/am/TaskRecord;->mDexCompatLaunchPolicy:I

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->updateDexCompatLaunchPolicy(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo;)V

    :cond_1
    iget v2, p1, Lcom/android/server/am/TaskRecord;->mDexCompatLaunchPolicy:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    :cond_2
    :goto_0
    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eq v1, v2, :cond_3

    iput-boolean v1, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-boolean v4, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    invoke-interface {v2, v3, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setDexCompatEnabled(IZ)V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateDexCompatLaunchPolicy(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo;)V
    .locals 6

    iget-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v3, :cond_5

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_2

    :cond_0
    if-nez v2, :cond_1

    const-string/jumbo v1, ", RootActivity is null"

    :goto_0
    const-string/jumbo v3, "MultiWindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DexCompatLaunchPolicy: task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v1, ", ActivityInfo is null"

    goto :goto_0

    :cond_2
    iget-object p2, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :cond_3
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v3, "MultiWindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DexCompatLaunchPolicy: task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", DesktopModeService is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3, p2}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v3

    iput v3, p1, Lcom/android/server/am/TaskRecord;->mDexCompatLaunchPolicy:I

    const-string/jumbo v3, "MultiWindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DexCompatLaunchPolicy: task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " LaunchPolicy=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/server/am/TaskRecord;->mDexCompatLaunchPolicy:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ResizeableMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public updateNonFocusedVisibleActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/am/MultiWindowManagerService;->getNextVisibleActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, v1, :cond_3

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v5, :cond_3

    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v4, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    :cond_0
    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, v1, :cond_6

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v5, :cond_6

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_5

    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_7

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {p1, p2, v2, p4, v1}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_a

    :goto_3
    return v3

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v6, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    :cond_4
    iget-boolean v2, p2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    iget-boolean v2, p2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_8

    iget-boolean v2, p2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_9

    :cond_8
    const/4 v2, 0x2

    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_2

    :cond_a
    move v3, v4

    goto :goto_3
.end method

.method public updateSupportFreeformDensityLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 6

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.samsung.android.sdk.multiwindow.freeform.densitychange"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->mSupportFreefromDensity:Z

    if-eq v2, v1, :cond_2

    iput-boolean v1, p1, Lcom/android/server/am/TaskRecord;->mSupportFreefromDensity:Z

    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "MultiWindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSupportFreeformDensityLocked: tr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", supportFreeformDensity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", root="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v2, v3, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setSupportFreeformDensity(IZ)V

    return v5

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/Map;)V
    .locals 5

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v4, "updateTaskPositionInTaskBar"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    check-cast p1, Ljava/util/HashMap;

    invoke-interface {v2, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->updateTaskPositionInTaskBar(Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method
