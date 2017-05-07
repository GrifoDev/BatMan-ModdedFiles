.class public Lcom/android/launcher3/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;
.implements Lcom/android/launcher3/LauncherModel$Callbacks;
.implements Lcom/android/launcher3/LauncherProviderChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Launcher$GSAPrewamingClientCallbacks;,
        Lcom/android/launcher3/Launcher$CloseSystemDialogsIntentReceiver;
    }
.end annotation


# static fields
.field public static final APPWIDGET_HOST_ID:I = 0x400

.field static final DEBUG_DUMP_LOG:Z = false

.field static final DEBUG_RESUME_TIME:Z = false

.field static final DUMP_STATE_PROPERTY:Ljava/lang/String; = "launcher_dump_state"

.field private static final EASY_MODE:I = 0x0

.field private static final EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field public static final GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

.field static final INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION:Ljava/lang/String; = "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field public static final LAUNCHER_SYSTEM_UI_FLAG_LIGHT_STATUS_BAR:I = 0x2000

.field static final LOGD:Z = false

.field static final PROFILE_STARTUP:Z = false

.field private static final RUNTIME_STATE_VIEW_IDS:Ljava/lang/String; = "launcher.view_ids"

.field private static final SETTINGS_WALLPAPER_TILT_STATUS:Ljava/lang/String; = "wallpaper_tilt_status"

.field private static final STANDARD_MODE:I = 0x1

.field static final TAG:Ljava/lang/String; = "Launcher"

.field static sDateFormat:Ljava/text/DateFormat;

.field static sDateStamp:Ljava/util/Date;

.field private static sDensityDpi:I

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsRecreateModeChange:Z

.field private static sNeedCheckEasyMode:Z

.field private static sRecreateCountOnCreate:I

.field static sRunStart:J


# instance fields
.field private mAppsButtonOnResumeCallback:Ljava/lang/Runnable;

.field private mAttached:Z

.field private mBindOnResumeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBuildLayersRunnable:Ljava/lang/Runnable;

.field private mChangeMode:Z

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private final mDarkFontObserver:Landroid/database/ContentObserver;

.field private final mDarkNavigationBarObserver:Landroid/database/ContentObserver;

.field private final mDarkStatusBarObserver:Landroid/database/ContentObserver;

.field private mDateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private final mEasyModeObserver:Landroid/database/ContentObserver;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mGlobalSettingUtils:Lcom/android/launcher3/util/GlobalSettingUtils;

.field private mHasFocus:Z

.field private mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mHotword:Lcom/android/launcher3/home/HotWord;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsSafeModeEnabled:Z

.field private mItemIdToViewId:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncherView:Landroid/view/View;

.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mOnResumeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnResumeNeedsLoad:Z

.field private mOnResumeState:I

.field private mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

.field private mPaused:Z

.field private mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

.field private mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRestoreScreenOrientationDelay:I

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mSearchedApp:Ljava/lang/String;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSkipAnim:Z

.field private mStageManager:Lcom/android/launcher3/common/stage/StageManager;

.field private mStats:Lcom/android/launcher3/Stats;

.field private mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

.field private mVisible:Z

.field private mWallpaperTiltSettingEnabled:Z

.field private mWindowToken:Landroid/os/IBinder;

.field private mZeropageStartedByHomeKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->sDateStamp:Ljava/util/Date;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/Launcher;->sDateFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/launcher3/Launcher;->sRunStart:J

    sput-boolean v2, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    sput v2, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    sput-boolean v2, Lcom/android/launcher3/Launcher;->sNeedCheckEasyMode:Z

    sput v2, Lcom/android/launcher3/Launcher;->sDensityDpi:I

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/Launcher;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    new-instance v0, Lcom/android/launcher3/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    iput v1, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mAppsButtonOnResumeCallback:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/launcher3/Launcher;->mRestoreScreenOrientationDelay:I

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    new-instance v0, Lcom/android/launcher3/Launcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$1;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mSkipAnim:Z

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mSearchedApp:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mChangeMode:Z

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mWallpaperTiltSettingEnabled:Z

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mZeropageStartedByHomeKey:Z

    new-instance v0, Lcom/android/launcher3/Launcher$8;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$8;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/launcher3/Launcher$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$9;-><init>(Lcom/android/launcher3/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDarkFontObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/launcher3/Launcher$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$10;-><init>(Lcom/android/launcher3/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDarkStatusBarObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/launcher3/Launcher$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$11;-><init>(Lcom/android/launcher3/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDarkNavigationBarObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/launcher3/Launcher$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$12;-><init>(Lcom/android/launcher3/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mEasyModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/launcher3/Launcher$14;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$14;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->closeSystemDialogs()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher3/Launcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->resetWallpaperOffsets()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/Launcher;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeBindController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/drag/DragManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->changeColorForBg()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher3/Launcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/launcher3/Launcher;->sNeedCheckEasyMode:Z

    return p0
.end method

.method public static addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    .locals 0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_1

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    return-void
.end method

.method private changeColorForBg()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageManager;->onChangeColorForBg(Z)V

    :cond_0
    return-void
.end method

.method private changeEasyModeIfNecessary(Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v2, Lcom/android/launcher3/Launcher;->sNeedCheckEasyMode:Z

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_0

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeEasyMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mChangeMode:Z

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/LauncherAppState;->writeEasyModeEnabled(Z)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->recreateLauncher()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private changeHomeModeIfNecessary()V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_home_screen_mode"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pref_home_screen_mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change home mode setting value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appstate value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/LauncherAppState;->writeHomeOnlyModeEnabled(Z)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    goto :goto_0
.end method

.method private clearTypedText()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method private closeSystemDialogs()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->setWaitingForResult(Z)V

    return-void
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resetWallpaperOffsets()V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetWallpaperOffsets exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageManager;->restoreState(Landroid/os/Bundle;)V

    const-string v0, "launcher.view_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private setCloneItemEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel;->updateAppsForCloneItemEnabled(Z)V

    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    const/16 v0, 0x400

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->supportStatusBar()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit16 v0, v0, 0x800

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private setLiveIconAlarm()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->setCalendarAlarm(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->setClockAlarm(Landroid/content/Context;)V

    return-void
.end method

.method private setOrientation()V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private setWhichTransitionEffect(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->setCurrentTransitionEffect(I)V

    :cond_0
    return-void
.end method

.method private setupViews()V
    .locals 2

    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    const v0, 0x7f0e008e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/DragLayer;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/common/view/DragLayer;->setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/drag/DragManager;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->setup(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->setupStartupViews()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->setup(Landroid/app/Activity;Lcom/android/launcher3/common/drag/DragManager;)V

    :cond_1
    return-void
.end method

.method private setupWallpaperScroller()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "Launcher"

    const-string v5, "setupWallpaperScroller"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wallpaper_tilt_status"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mWallpaperTiltSettingEnabled:Z

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    const v5, 0x1002b

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v2, "Launcher"

    const-string v3, "Launcher::onCreate() - gyroSensor not support"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/launcher3/LauncherFeature;->setSupportWallpaperTilt(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    if-nez v2, :cond_4

    new-instance v2, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    :cond_4
    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mWallpaperTiltSettingEnabled:Z

    if-eqz v2, :cond_1

    invoke-static {p0, p0}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->initialize(Landroid/content/Context;Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->start(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->setWindowToken(Landroid/os/IBinder;)V

    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->resume(Z)V

    goto :goto_1

    :cond_7
    const-string v2, "Launcher"

    const-string v4, "WallpaperScroller - mWindowToken is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private shutdownWallpaperScroller()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->pause()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/Launcher$15;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$15;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnResumeCallback(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginDragFromWidget(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;F)V
    .locals 12

    move-object/from16 v10, p4

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/home/Workspace;->estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I

    move-result-object v11

    instance-of v0, v10, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragOutline(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const/4 v6, 0x1

    const/4 v9, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/common/drag/DragManager;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;IFLandroid/graphics/drawable/Drawable;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    aget v0, v11, v0

    const/4 v1, 0x1

    aget v1, v11, v1

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/common/drag/DragViewHelper;->createWidgetDragOutline(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_0
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V
    .locals 36

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "  tag: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v4, :cond_3

    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/ItemInfo;->getChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZI)V

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/IconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    move-object/from16 v4, p1

    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(ZZ)V

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/IconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v35

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/Workspace;->estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I

    move-result-object v32

    const/4 v4, 0x0

    aget v4, v32, v4

    const/4 v7, 0x1

    aget v7, v32, v7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v7}, Lcom/android/launcher3/common/drag/DragViewHelper;->createWidgetDragOutline(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    :goto_1
    new-instance v29, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x6

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v4

    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1, v4}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v13

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v13, v4

    :cond_6
    const/4 v4, 0x0

    aget v4, v33, v4

    int-to-float v4, v4

    move/from16 v0, v18

    int-to-float v7, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v13

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v4, 0x1

    aget v4, v33, v4

    int-to-float v4, v4

    move/from16 v0, v17

    int-to-float v7, v0

    move/from16 v0, v17

    int-to-float v8, v0

    mul-float/2addr v8, v13

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v20

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_7

    move-object/from16 v23, p1

    check-cast v23, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/common/view/IconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/common/view/IconView;->getIconSize()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    move-object/from16 v0, v26

    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v34, v4, v7

    sub-int v4, v18, v22

    div-int/lit8 v25, v4, 0x2

    add-int v31, v25, v22

    add-int v19, v34, v22

    add-int v20, v20, v34

    new-instance v11, Landroid/graphics/Point;

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v11, v4, v7}, Landroid/graphics/Point;-><init>(II)V

    new-instance v12, Landroid/graphics/Rect;

    move/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v31

    move/from16 v3, v19

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_7
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p3, :cond_8

    new-instance v30, Landroid/graphics/Rect;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->setAnchorRect(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->setAnchorView(Landroid/view/View;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    sub-int v7, v20, v35

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v8, p2

    move/from16 v15, p3

    move/from16 v16, p4

    invoke-virtual/range {v4 .. v16}, Lcom/android/launcher3/common/drag/DragManager;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FLandroid/graphics/drawable/Drawable;ZZ)Lcom/android/launcher3/common/drag/DragView;

    move-result-object v21

    invoke-interface/range {p2 .. p2}, Lcom/android/launcher3/common/drag/DragSource;->getIntrinsicIconSize()I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/drag/DragView;->setIntrinsicIconSize(I)V

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragView;->setTopDelta(I)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_9
    move-object/from16 v4, p1

    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZI)V

    goto/16 :goto_0

    :cond_a
    invoke-interface/range {p2 .. p2}, Lcom/android/launcher3/common/drag/DragSource;->getOutlineColor()I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragOutline(Landroid/content/Context;Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto/16 :goto_1

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method public changeNavigationBarColor(Z)V
    .locals 5

    :try_start_0
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeNavigationBarColor whiteBg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const v2, 0x7f0c002d

    :goto_0
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->semSetNavigationBarIconColor(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const v2, 0x7f0c002c

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Launcher"

    const-string v3, "NoSuchMethodError occur when change nevigation color."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public changeStatusBarColor(Z)V
    .locals 3

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStatusBarColor whiteBg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public closeFolder()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->closeFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    :cond_0
    return-void
.end method

.method public closeFolder(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/stage/StageManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    :sswitch_1
    const-string v1, "launcher_dump_state"

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->dumpState()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5

    const v4, 0x7f0700c2

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const v3, 0x7f07000f

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const v3, 0x7f0700ba

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Debug logs: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dumpLogsToLocalData()V
    .locals 0

    return-void
.end method

.method public dumpState()V
    .locals 3

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher3 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isRestoring()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isWaitingForResult()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/home/HomeBindController;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->dumpState()V

    const-string v0, "Launcher"

    const-string v1, "END launcher3 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableVoiceSearch(Landroid/widget/SearchView;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "search"

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    invoke-virtual {v3, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    :cond_0
    return-void
.end method

.method public finishStageOnTouchOutSide()Z
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->finishOnTouchOutSide()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->onBackPressed()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBindOnResumeCallbacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher3/common/view/DragLayer;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    return-object v0
.end method

.method public getDragMgr()Lcom/android/launcher3/common/drag/DragManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    return-object v0
.end method

.method public getHomeController()Lcom/android/launcher3/home/HomeController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method public getHotWordInstance()Lcom/android/launcher3/home/HotWord;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    return-object v0
.end method

.method public getInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLauncherModel()Lcom/android/launcher3/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method public getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    return-object v0
.end method

.method public getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v5}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/common/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v5, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/folder/view/FolderView;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v2, v4

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v2, v4

    goto :goto_1
.end method

.method public getOutlineColor()I
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0
.end method

.method public getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    return-object v0
.end method

.method public getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    return-object v0
.end method

.method public getSavedState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSearchedApp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchedApp:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondTopStageMode()I
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getSecondTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v1

    goto :goto_1
.end method

.method public getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getStageManager()Lcom/android/launcher3/common/stage/StageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    return-object v0
.end method

.method public getStats()Lcom/android/launcher3/Stats;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStats:Lcom/android/launcher3/Stats;

    return-object v0
.end method

.method public getTopStageMode()I
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v1

    goto :goto_1
.end method

.method public getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    return-object v0
.end method

.method public getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 5

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    long-to-int v0, v2

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    return v0
.end method

.method public hasVoiceSearch(Landroid/content/Context;)Z
    .locals 11

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "search"

    invoke-virtual {p0, v9}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SearchManager;

    invoke-virtual {v5, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    const-string v9, "android.speech.extra.LANGUAGE_MODEL"

    const-string v10, "free_form"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/high16 v10, 0x10000

    invoke-virtual {v9, v2, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v8, 0x1

    :cond_1
    return v8
.end method

.method public isAppsStage()Z
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDraggingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderStage()Z
    .locals 2

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoogleSearchWidget(I)Z
    .locals 10

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v8, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v8, :cond_2

    check-cast v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v8, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    sget-object v9, Lcom/android/launcher3/Launcher;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isHomeNormal()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHomeStage()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    return v0
.end method

.method public isRunningAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->isRunningAnimation()Z

    move-result v0

    return v0
.end method

.method public isSafeModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    return v0
.end method

.method public isSkipAnim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mSkipAnim:Z

    return v0
.end method

.method public lockScreenOrientation()V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/common/stage/StageManager;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAppWidgetHostReset()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->startListening()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    const-string v2, "Launcher"

    const-string v3, "onAttachedToWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v2}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onAttachedToWindow()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportWallpaperTilt()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->setWindowToken(Landroid/os/IBinder;)V

    const-string v2, "Launcher"

    const-string v3, "WallpaperScroller - onAttachedToWindow - set mWindowToken"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "com.sec.android.intent.action.SET_ZERO_PAGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_4
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_font"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mDarkFontObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_statusbar"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mDarkStatusBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_navigationbar"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mDarkNavigationBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mEasyModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setIndicatorTransparency()V

    iput-boolean v5, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    iput-boolean v5, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    return-void

    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotWord;->onAttachedToWindow()V

    goto/16 :goto_0

    :cond_7
    const-string v2, "Launcher"

    const-string v3, "WallpaperScroller - onAttachedToWindow - mWindowToken is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->onBackPressed()V

    goto :goto_0
.end method

.method public onChangeSelectMode(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->onChangeSelectMode(ZZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageManager;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickFolderIcon(Landroid/view/View;)V
    .locals 10

    instance-of v5, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Input must be a FolderIcon"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/home/HomeController;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v4

    iget-boolean v5, v3, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v3, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderInfo;->isLockedFolderOpenedOnce()Z

    move-result v5

    if-nez v5, :cond_3

    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/folder/view/FolderIconView;)V

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->openLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    invoke-virtual {v5, v3, p0}, Lcom/android/launcher3/util/logging/SALogging;->insertLockedItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v5, "Launcher"

    const-string v6, " can not open that locked folder "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean v5, v3, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-nez v5, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderView;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->closeFolder()V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher3/home/Workspace;->getPageForView(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->closeFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v5

    if-eq v2, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->closeFolder()V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged. newConfig : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "Launcher"

    const-string v2, "onConfigurationChanged. launcher do not support landscape"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->makeDeviceProfile()V

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppState;->initScreenGrid(Z)V

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->layoutGrid(Lcom/android/launcher3/Launcher;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/stage/StageManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/tray/TrayManager;->setBottomViewDragEnable()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string v5, "Launcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate configuration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", displayMetrics = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "desktopmode"

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "Launcher"

    const-string v9, "kill Process cause of wrong info from DeX"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v7}, Lcom/android/launcher3/Launcher;->changeEasyModeIfNecessary(Z)V

    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->changeHomeModeIfNecessary()V

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->makeDeviceProfile()V

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/launcher3/LauncherAppState;->initScreenGrid(Z)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Lcom/android/launcher3/home/HotWord;

    invoke-direct {v5, p0}, Lcom/android/launcher3/home/HotWord;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/google/android/libraries/launcherclient/LauncherClient;

    new-instance v9, Lcom/android/launcher3/Launcher$GSAPrewamingClientCallbacks;

    invoke-direct {v9, v8}, Lcom/android/launcher3/Launcher$GSAPrewamingClientCallbacks;-><init>(Lcom/android/launcher3/Launcher$1;)V

    new-instance v10, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v11

    invoke-direct {v10, v7, v11, v6}, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;-><init>(ZZZ)V

    invoke-direct {v5, p0, v9, v10}, Lcom/google/android/libraries/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportChangeGridForDpi()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    invoke-static {p0, v5}, Lcom/android/launcher3/util/ScreenGridUtilities;->changeGridForDpi(Landroid/content/Context;Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-ne v5, v6, :cond_10

    move v5, v6

    :goto_1
    sput-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/theme/OpenThemeManager;->initThemeForIconLoading()V

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/theme/OpenThemeManager;->preloadResources()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v7}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-direct {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;-><init>()V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    :cond_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setup(Lcom/android/launcher3/Launcher;)V

    :cond_6
    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    new-instance v5, Lcom/android/launcher3/common/drag/DragManager;

    invoke-direct {v5, p0}, Lcom/android/launcher3/common/drag/DragManager;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTraySwipeInteraction()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Lcom/android/launcher3/common/tray/TrayManager;

    invoke-direct {v5}, Lcom/android/launcher3/common/tray/TrayManager;-><init>()V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    :cond_7
    invoke-static {p0}, Lcom/android/launcher3/util/WhiteBgManager;->setup(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher3/util/WhiteBgManager;->setupForStatusBar(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher3/util/WhiteBgManager;->setupForNavigationBar(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    new-instance v9, Lcom/android/launcher3/common/stage/StageManager;

    sget-boolean v5, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    if-eqz v5, :cond_11

    move-object v5, v8

    :goto_2
    invoke-direct {v9, p0, v5}, Lcom/android/launcher3/common/stage/StageManager;-><init>(Lcom/android/launcher3/Launcher;Landroid/os/Bundle;)V

    iput-object v9, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/home/HomeController;

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-direct {v5, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mInflater:Landroid/view/LayoutInflater;

    new-instance v5, Lcom/android/launcher3/Stats;

    invoke-direct {v5, p0}, Lcom/android/launcher3/Stats;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mStats:Lcom/android/launcher3/Stats;

    iput-boolean v7, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_12

    const v5, 0x7f03002d

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->setContentView(I)V

    :goto_3
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setupViews()V

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->layoutGrid(Lcom/android/launcher3/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v5, :cond_13

    sget-boolean v5, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    if-nez v5, :cond_13

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v5}, Lcom/android/launcher3/Launcher;->restoreState(Landroid/os/Bundle;)V

    :goto_4
    sput-boolean v7, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    sget v5, Lcom/android/launcher3/Launcher;->sDensityDpi:I

    if-lez v5, :cond_9

    sget v5, Lcom/android/launcher3/Launcher;->sDensityDpi:I

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v5, v6, :cond_9

    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sDensityDpi = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v8, Lcom/android/launcher3/Launcher;->sDensityDpi:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", densityDpi = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget v6, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/model/IconCache;->clearCache(I)V

    :cond_9
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v5, Lcom/android/launcher3/Launcher;->sDensityDpi:I

    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutTray;->checkIconTrayEnabled(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->isRestoring()Z

    move-result v5

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/android/launcher3/Launcher;->mChangeMode:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v5

    const/16 v6, -0x3e9

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->setRestorePage(I)V

    iput-boolean v7, p0, Lcom/android/launcher3/Launcher;->mChangeMode:Z

    :cond_a
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getRestorePage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/LauncherModel;->startLoader(I)V

    :cond_b
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v5, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager;->getInstance()Lcom/android/launcher3/gamehome/GameHomeManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/launcher3/gamehome/GameHomeManager;->initGameHomeManager(Lcom/android/launcher3/Launcher;)V

    sget-object v5, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/util/LightingEffectManager;->setup(Landroid/app/Activity;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.samsung.action.EVERY_MINUTE_CLOCK_UPDATE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setLiveIconAlarm()V

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setOrientation()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v5

    if-eqz v5, :cond_c

    new-instance v5, Lcom/android/launcher3/pagetransition/PageTransitionManager;

    invoke-direct {v5, p0}, Lcom/android/launcher3/pagetransition/PageTransitionManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    :cond_c
    new-instance v5, Lcom/android/launcher3/util/GlobalSettingUtils;

    invoke-direct {v5, p0}, Lcom/android/launcher3/util/GlobalSettingUtils;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mGlobalSettingUtils:Lcom/android/launcher3/util/GlobalSettingUtils;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/Launcher$2;

    invoke-direct {v6, p0}, Lcom/android/launcher3/Launcher$2;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/proxy/LauncherProxy;->setLauncherActivityProxyCallbacks(Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;)V

    return-void

    :cond_d
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v5

    if-eqz v5, :cond_f

    sget v5, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    const-string v5, "Launcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong configuration -> recreateLauncher (count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v5, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    const/4 v9, 0x5

    if-gt v5, v9, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->recreateLauncher()V

    goto/16 :goto_0

    :cond_e
    const-string v5, "Launcher"

    const-string v9, "We can\'t recreate activity any more"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput v7, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    goto/16 :goto_0

    :cond_f
    sput v7, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    goto/16 :goto_0

    :cond_10
    move v5, v7

    goto/16 :goto_1

    :cond_11
    move-object v5, p1

    goto/16 :goto_2

    :cond_12
    const v5, 0x7f03002b

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->setContentView(I)V

    goto/16 :goto_3

    :cond_13
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onDestroy()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v1, "Launcher"

    const-string v2, "onDestroy: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearCheckedApps()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearUninstallApplist()V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->onDestroy()V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->removeAdvanceMessage()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeLoader;->unRegisterCallbacks()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->unRegisterCallbacks()V

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/HomeController;->exitResizeState(Z)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->onDestroy()V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/tray/TrayManager;->onDestroy()V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    :cond_4
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->onDestroy()V

    :cond_6
    invoke-static {}, Lcom/android/launcher3/util/BlurUtils;->resetBlur()V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->onDestroyActivity()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow mAttached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onDetachedFromWindow()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotWord;->onDetachedFromWindow()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDarkFontObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDarkStatusBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDarkNavigationBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mEasyModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    return-void
.end method

.method public onDragEnd()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->lockScreenOrientation()V

    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-lez v3, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    :goto_0
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->acceptFilter()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getContainerView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v6, v7, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onSearchRequested()Z

    move-result v1

    :cond_0
    :goto_1
    return v1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v5, 0x52

    if-ne p1, v5, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    const/16 v5, 0x3ea

    if-ne p1, v5, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v5

    if-eq v5, v9, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5, v9, v8}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/StageManager;->onBackPressed()V

    :cond_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    :cond_6
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5, v9, v8}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    move v1, v4

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5, v8}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 23

    const-wide/16 v14, 0x0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v20, "Launcher"

    const-string v21, "onNewIntent"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v20

    const/high16 v21, 0x400000

    and-int v20, v20, v21

    const/high16 v21, 0x400000

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher3/Launcher;->mSkipAnim:Z

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v20

    if-eqz v20, :cond_2

    const/4 v12, 0x1

    :goto_1
    const-string v20, "android.intent.action.MAIN"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v16

    if-eqz v11, :cond_12

    const-string v20, "extra_enter_screen_grid"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v20, Lcom/android/launcher3/Launcher$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/Launcher$5;-><init>(Lcom/android/launcher3/Launcher;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    const-string v20, "ZeroPageSetting"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_4

    const v20, 0x7f04000a

    const v21, 0x7f04000b

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->overridePendingTransition(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/home/ZeroPageController;->enterZeroPageSetting()V

    goto :goto_2

    :cond_4
    const-string v20, "StartEdit"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mGlobalSettingUtils:Lcom/android/launcher3/util/GlobalSettingUtils;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/GlobalSettingUtils;->startHomeSettingBySettingMenu(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    const-string v20, "extra_enter_widgets"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_6

    const/16 v20, 0x3

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(IZZ)Z

    goto :goto_2

    :cond_6
    const-string v20, "extra_enter_apps_screen_grid"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x2

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(IZZ)Z

    goto/16 :goto_2

    :cond_7
    const-string v20, "extra_enter_hide_apps"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_8

    new-instance v6, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v6}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v6, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    const-string v20, "KEY_PICKER_MODE"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_2

    :cond_8
    const-string v20, "AppSearch"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/Launcher;->mSearchedApp:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mSearchedApp:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v20

    if-nez v20, :cond_9

    new-instance v7, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v7}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v7, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v7, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    const/16 v20, 0x2

    move/from16 v0, v20

    iput v0, v7, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_2

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->closeSystemDialogs()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->getContainerView()Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const-string v22, "3"

    invoke-virtual/range {v20 .. v22}, Lcom/android/launcher3/home/HomeController;->exitResizeState(ZLjava/lang/String;)V

    const-string v20, "android.intent.extra.FROM_HOME_KEY"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-string v20, "sec.android.intent.extra.LAUNCHER_ACTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_15

    if-nez v5, :cond_a

    if-eqz v9, :cond_14

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->cancelGridChange()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->finishAllStage()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v20

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showMultiSelectPanel(ZZ)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearUninstallApplist()V

    :cond_d
    if-eqz v5, :cond_e

    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    if-eqz v12, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/home/HomeController;->enableCustomLayoutAnimation(Z)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v20

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/ZeroPageController;->isCurrentZeroPage()Z

    move-result v20

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/ZeroPageController;->startZeroPage()V

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/Launcher;->mZeropageStartedByHomeKey:Z

    :cond_10
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v20

    if-eqz v20, :cond_11

    const-string v20, "input_method"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_11
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/Utilities;->closeDialog(Landroid/app/Activity;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportChinaDA()Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-static {v8}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->dismiss(Landroid/app/FragmentManager;)V

    :cond_12
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v18

    if-eqz v5, :cond_0

    if-nez v12, :cond_0

    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/home/Workspace;->isTouchActive()Z

    move-result v20

    if-nez v20, :cond_0

    new-instance v20, Lcom/android/launcher3/Launcher$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/Launcher$6;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/Workspace;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_13
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->resetSettingsValue()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/home/HomeController;->enableCustomLayoutAnimation(Z)V

    goto/16 :goto_3

    :cond_14
    new-instance v6, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v6}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v6, Lcom/android/launcher3/common/stage/StageEntry;->broughtToHome:Z

    goto/16 :goto_3

    :cond_15
    const-string v20, "sec.android.intent.extra.LAUNCHER_ACTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v20, "com.android.launcher2.ALL_APPS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v20

    if-nez v20, :cond_10

    new-instance v6, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v6}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v6, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v20

    if-nez v20, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    :cond_16
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v20

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/stage/StageManager;->onBackPressed()V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_3

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v20

    if-nez v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_4
.end method

.method protected onPause()V
    .locals 4

    const-string v1, "Launcher"

    const-string v2, "Launcher.onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->onPause()V

    invoke-static {}, Lcom/android/launcher3/home/ExternalRequestQueue;->enableExternalRequestQueue()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onPause()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->resetLastGestureUpTime()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportWallpaperTilt()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->shutdownWallpaperScroller()V

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->hasStartedSFinder()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/Launcher$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$4;-><init>(Lcom/android/launcher3/Launcher;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageManager;->onPrepareOptionMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/TrayManager;->resetMoving()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 20

    invoke-static {}, Lcom/android/launcher3/Utilities;->launcherResumeTesterStart()V

    const-wide/16 v12, 0x0

    const-string v3, "Launcher"

    const-string v4, "Launcher.onResume()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Launcher"

    const-string v4, "move to home stage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v3, :cond_0

    new-instance v9, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v9}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v9, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v9}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/Launcher;->mZeropageStartedByHomeKey:Z

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "start_from_zeropage"

    invoke-static {v3, v4}, Lcom/android/launcher3/Utilities;->getZeroPageKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "start_from_zeropage"

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/util/logging/GSIMLogging;->getZeroPageStayTime()J

    move-result-wide v6

    const-wide/16 v4, -0x1

    cmp-long v3, v6, v4

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "ZPST"

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/util/logging/GSIMLogging;->classifyZeroPageStayTime(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/Launcher;->mZeropageStartedByHomeKey:Z

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/launcher3/Launcher;->sNeedCheckEasyMode:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher3/Launcher;->changeEasyModeIfNecessary(Z)V

    :cond_4
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v11

    sget-object v3, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TRANSITON_EFFECT:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v3}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/launcher3/theme/OpenThemeManager;->getInteger(I)I

    move-result v16

    const/4 v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_5

    const/16 v16, 0x0

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/launcher3/Launcher;->setWhichTransitionEffect(I)V

    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v3}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onResume()V

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/Launcher;->mPaused:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->isRestoring()Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v3, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/HomeBindController;->setWorkspaceLoading(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    const/16 v4, -0x3e9

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherModel;->startLoader(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/HomeController;->setRestoring(Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c

    const-string v3, "Launcher"

    const-string v4, "mBindOnResumeCallbacks run"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time spent processing callbacks in onResume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CallCount  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e

    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mAppsButtonOnResumeCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mAppsButtonOnResumeCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/Launcher;->mAppsButtonOnResumeCallback:Ljava/lang/Runnable;

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isSkipAnim()Z

    move-result v3

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->postUninstallActivity()V

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/home/ExternalRequestQueue;->disableAndFlushExternalRequestQueue(Lcom/android/launcher3/Launcher;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/stage/StageManager;->onResume()V

    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/Launcher;->mSkipAnim:Z

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherAppState;->setSettingsActivity(Lcom/android/launcher3/SettingsActivity;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportWallpaperTilt()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->setupWallpaperScroller()V

    :cond_14
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/Utilities;->broadcastStkIntent(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mGlobalSettingUtils:Lcom/android/launcher3/util/GlobalSettingUtils;

    invoke-virtual {v3}, Lcom/android/launcher3/util/GlobalSettingUtils;->checkEnterNormalState()V

    invoke-static {}, Lcom/android/launcher3/Utilities;->launcherResumeTesterEnd()V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    const-string v0, "launcher.view_ids"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher3/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return v1
.end method

.method public onSettingsChanged(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingsChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "pref_home_screen_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HomeController;->changeHomeScreenMode(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "pref_CloneItemEnabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/android/launcher3/Launcher;->setCloneItemEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "pref_apps_button_setting"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/home/HomeController;->setAppsButtonEnabled(Z)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 4

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowVisibilityChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getContainerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/Launcher$7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$7;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->clearTypedText()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 5

    const/4 v2, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    :cond_1
    :goto_1
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const-string v1, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->resetWorkspacePagesAlpha()V

    goto :goto_1
.end method

.method public recreateLauncher()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->recreate()V

    return-void
.end method

.method public relayoutLauncher()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->layoutGrid(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public setHotWordDetection(Z)V
    .locals 3

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HotWord;->setEnableHotWord(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->requestHotwordDetection(Z)V

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHotWordDetection : call requestHotwordDetection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLoadOnResume()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSavedState(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    return-void
.end method

.method public setSearchedApp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mSearchedApp:Ljava/lang/String;

    return-void
.end method

.method public showAppsOrWidgets(IZZ)Z
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    if-ne v3, p1, :cond_2

    if-eqz p3, :cond_1

    if-ne p1, v5, :cond_1

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const-string v2, "KEY_WIDGET_FROM_SETTING"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher3/common/stage/StageManager;->deliverDataWithOutStageChange(ILcom/android/launcher3/common/stage/StageEntry;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p3, :cond_0

    if-ne p1, v4, :cond_0

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher3/common/stage/StageManager;->deliverDataWithOutStageChange(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean p2, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    if-eqz p3, :cond_3

    if-ne p1, v4, :cond_4

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v3, p1, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/HomeBindController;->setUserPresent(Z)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    move v1, v2

    goto :goto_0

    :cond_4
    if-ne p1, v5, :cond_3

    const-string v3, "KEY_WIDGET_FROM_SETTING"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public showAppsView(ZZ)V
    .locals 3

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAppsView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resetToTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(IZZ)Z

    return-void
.end method

.method public showWidgetsView(ZZ)V
    .locals 3

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showWidgetsView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resetToTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(IZZ)Z

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/stage/StageManager;->onStartForResult(I)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startAppShortcutOrInfoActivity(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_1

    move-object v3, v4

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    invoke-virtual {v5, v3, p0}, Lcom/android/launcher3/util/logging/SALogging;->insertItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V

    iget-object v5, v3, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const/4 v5, 0x2

    new-array v2, v5, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v5, Landroid/graphics/Rect;

    aget v6, v2, v8

    aget v7, v2, v10

    aget v8, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v2, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    invoke-virtual {v5, v3, p0}, Lcom/android/launcher3/util/logging/SALogging;->insertLockedItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p0, p1, v1, v4}, Lcom/android/launcher3/Utilities;->startActivitySafely(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStats:Lcom/android/launcher3/Stats;

    invoke-virtual {v5, p1, v1, v3}, Lcom/android/launcher3/Stats;->recordLaunch(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/logging/GSIMLogging;->runAllStatusLogging()V

    return-void

    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Input must be a Shortcut or AppInfo"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v0

    const-string v5, "Launcher"

    const-string v6, " can not SALogging locked app "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startApplicationUninstallActivity(Landroid/content/ComponentName;ILcom/android/launcher3/common/compat/UserHandleCompat;Z)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_1

    if-eqz p4, :cond_0

    const v6, 0x7f070063

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, " "

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    const-string v6, "package"

    invoke-static {v6, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v4, 0x10808000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p3, :cond_2

    const-string v4, "android.intent.extra.USER"

    invoke-virtual {p3, v1, v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    goto :goto_0
.end method

.method public startHomeSettingActivity()V
    .locals 3

    const-string v1, "Launcher"

    const-string v2, "launch setting Activity."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher3/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/common/stage/StageManager;->onStartForResult(I)V

    :try_start_0
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    return-void
.end method

.method public startSearchFromAllApps(Landroid/view/View;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/Utilities;->startActivitySafely(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    return-void
.end method

.method public unlockScreenOrientation(Z)V
    .locals 4

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/Launcher$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$3;-><init>(Lcom/android/launcher3/Launcher;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
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

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher3/LauncherModel;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
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
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public updateItemInfoToAppsItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel;->updateItemInfoToAppsItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateZeroPage(Z)V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HomeController;->updateZeroPage(Z)V

    :cond_0
    return-void
.end method

.method public waitUntilResume(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    return v0
.end method

.method public waitUntilResume(Ljava/lang/Runnable;Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public waitUntilResumeForAppsButton(Ljava/lang/Runnable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mAppsButtonOnResumeCallback:Ljava/lang/Runnable;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
