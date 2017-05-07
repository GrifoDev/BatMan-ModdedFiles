.class public Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;
.super Ljava/lang/Object;
.source "TaskBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$PackageChangedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static dragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

.field public static dragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

.field private static sMenuIconSize:I

.field private static sScreenDensity:F

.field public static sViewLayerPaint:Landroid/graphics/Paint;


# instance fields
.field private final ACTION_HIDE_PROMOTION_BANNER_ON_APPS:Ljava/lang/String;

.field private final ACTION_SHOW_PROMOTION_BANNER_ON_APPS:Ljava/lang/String;

.field private final ACTION_UNINSTALL_APPLIST:Ljava/lang/String;

.field private final EXTRA_PROMOTION_BANNER_REMOTEVIEW:Ljava/lang/String;

.field private final EXTRA_PROMOTION_BANNER_REQUESTER:Ljava/lang/String;

.field private final EXTRA_UNINSTALL_APPLIST_COMPONENT:Ljava/lang/String;

.field private final EXTRA_UNINSTALL_APPLIST_TITLE:Ljava/lang/String;

.field private final EXTRA_UNINSTALL_APPLIST_USER:Ljava/lang/String;

.field private currentTheme:Ljava/lang/String;

.field private isKnoxKeyguardShown:Z

.field mAvailableUserInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBadgeObserver:Landroid/database/ContentObserver;

.field private mBindAppsLoaded:Z

.field private mBindTaskBarLoaded:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDBManager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

.field private mDeXLauncherReceiver:Landroid/content/BroadcastReceiver;

.field private mDeskStatusBarView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

.field private mGlobalReceiver:Landroid/content/BroadcastReceiver;

.field private mIconBackgroundChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsKeyboardConnected:Z

.field private mIsTaskBarOnTop:Z

.field private mKeyguardStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mMenuAppModel:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

.field private mPackageReceiverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

.field private mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

.field private mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

.field private mUserManager:Landroid/os/UserManager;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateAvailableUsers()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateKeyboardStatus()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updatePackageReceiver()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[DS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sViewLayerPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v3, "com.sec.intent.action.SHOW_PROMOTION_BANNER_ON_APPS"

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->ACTION_SHOW_PROMOTION_BANNER_ON_APPS:Ljava/lang/String;

    const-string/jumbo v3, "com.sec.intent.action.HIDE_PROMOTION_BANNER_ON_APPS"

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->ACTION_HIDE_PROMOTION_BANNER_ON_APPS:Ljava/lang/String;

    const-string/jumbo v3, "com.sec.intent.extra.PROMOTION_BANNER_REMOTEVIEW"

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->EXTRA_PROMOTION_BANNER_REMOTEVIEW:Ljava/lang/String;

    const-string/jumbo v3, "com.sec.intent.extra.PROMOTION_BANNER_REQUESTER"

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->EXTRA_PROMOTION_BANNER_REQUESTER:Ljava/lang/String;

    const-string/jumbo v3, "com.sec.intent.action.UNINSTALL_APPLIST"

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->ACTION_UNINSTALL_APPLIST:Ljava/lang/String;

    const-string/jumbo v3, "com.sec.intent.extra.UNINSTALL_APPLIST_TITLE"

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->EXTRA_UNINSTALL_APPLIST_TITLE:Ljava/lang/String;

    const-string/jumbo v3, "com.sec.intent.extra.UNINSTALL_APPLIST_COMPONENT"

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->EXTRA_UNINSTALL_APPLIST_COMPONENT:Ljava/lang/String;

    const-string/jumbo v3, "com.sec.intent.extra.UNINSTALL_APPLIST_USER"

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->EXTRA_UNINSTALL_APPLIST_USER:Ljava/lang/String;

    iput v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGlobalReceiver:Landroid/content/BroadcastReceiver;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mDeXLauncherReceiver:Landroid/content/BroadcastReceiver;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIconBackgroundChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindAppsLoaded:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindTaskBarLoaded:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isKnoxKeyguardShown:Z

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->currentTheme:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIsKeyboardConnected:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPackageReceiverMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "start TaskBar service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateAvailableUsers()V

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIsTaskBarOnTop:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "input"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateKeyboardStatus()V

    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mDBManager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mMenuAppModel:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mMenuAppModel:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->setTaskBarManager(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mMenuAppModel:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->makeNonDisableAppList()V

    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput v5, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sMenuIconSize:I

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d05c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sMenuIconSize:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d05c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    float-to-int v0, v3

    :goto_0
    sget v3, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sMenuIconSize:I

    if-ne v3, v0, :cond_1

    sput v5, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sMenuIconSize:I

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sScreenDensity:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "current_sec_appicon_theme_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->currentTheme:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->registerReceiverAndObserverAsUser()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->reloadBadges()V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->initialize(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->startLoader()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getScreenDensity()F
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sScreenDensity:F

    return v0
.end method

.method public static isMenuIconSizeChanged()Z
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sMenuIconSize:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private registerPackageReceiverAsUser(I)V
    .locals 11

    const/4 v4, 0x0

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$PackageChangedReceiver;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$PackageChangedReceiver;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v6, v1

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPackageReceiverMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register package receiver for user("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAvailableUsers()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mUserManager:Landroid/os/UserManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mAvailableUserInfos:Ljava/util/List;

    return-void
.end method

.method private updateKeyboardStatus()V
    .locals 8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v4}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    const/4 v0, 0x0

    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_0

    aget v1, v2, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v6, v1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/InputDevice;->isExternal()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIsKeyboardConnected:Z

    if-eq v0, v4, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIsKeyboardConnected:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateLeftPanelLayout()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private updatePackageReceiver()V
    .locals 9

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPackageReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mAvailableUserInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v7

    if-eq v6, v7, :cond_1

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPackageReceiverMap:Ljava/util/HashMap;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->registerPackageReceiverAsUser(I)V

    goto :goto_0

    :cond_2
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unregister removed user : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPackageReceiverMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public addRunningTaskApp(IIILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindTaskBarLoaded:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addRunningTaskApp:: This call is blocked!!! TaskBarView is null or bindApps not loaded., taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ComponentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", callingPkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->addRunningTaskApp(IIILandroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public addTaskBar(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addTaskBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addView fail. View is null, or aleady attached!!! view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bindAppsLoaded()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "=== bindAppsLoaded ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "topItems is null!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindAppsLoaded:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->bindAppsLoaded()V

    :cond_3
    return-void
.end method

.method public bindBadgeUpdated(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateBadgeCount(Ljava/util/Map;)V

    return-void
.end method

.method public bindPackagesChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateAppsWindow()V

    return-void
.end method

.method public bindTaskbarBegin()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "=== bindTaskbarBegin ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public bindTaskbarEnd()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "=== bindTaskbarEnd ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->refreshRunningList()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindTaskBarLoaded:Z

    return-void
.end method

.method public bindTaskbarItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "=== bindTaskbarItems === count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->bindTaskbarItems(Ljava/util/List;)V

    return-void
.end method

.method public bindTaskbarItemsRemoved(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->bindHomeItemsRemoved(Ljava/util/List;)V

    return-void
.end method

.method public bindTaskbarItemsUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->bindHomeItemsUpdated(Ljava/util/List;)V

    return-void
.end method

.method public blockNotification()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->blockNotification()V

    return-void
.end method

.method public clearAllNotifications()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearAllDeskNotifications()V

    return-void
.end method

.method public clearNotification()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearNotification()V

    return-void
.end method

.method public clearTaskBar()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "clearTaskBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->unregisterReceiverAndObserverAsUser()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mMenuAppModel:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->clear()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v0, v3, v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->resetLoadedState(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->initialize(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllView(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeAllWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeAllViews()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mDeskStatusBarView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mKeyguardStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->removeView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public closeAllDeskPanels()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    :cond_0
    return-void
.end method

.method public closeAllTaskBarWindowExcept(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllExcept(IZ)V

    :cond_0
    return-void
.end method

.method public closeContextMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeContextMenu()V

    :cond_0
    return-void
.end method

.method public closeRecentApps()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideRecentApps(ZZ)V

    :cond_0
    return-void
.end method

.method public collapseDeskStatusBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->collapseDeskStatusBar(Z)V

    return-void
.end method

.method public expandDeskStatusBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->expandDeskStatusBar(Z)V

    return-void
.end method

.method public focusRunningTaskApp(IIILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindTaskBarLoaded:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "focusRunningTaskApp:: This call is blocked!!! TaskBarView is null or bindApps not loaded., taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ComponentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", callingPkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->focusRunningTaskApp(IIILandroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public forceResetAndReload()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindTaskBarLoaded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindAppsLoaded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->forceReload()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->forceReset()V

    :cond_1
    return-void
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentUserHandle()Landroid/os/UserHandle;
    .locals 2

    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getCurrentUserId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    return v0
.end method

.method public getDBManager()Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mDBManager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    return-object v0
.end method

.method public getDeskContextMenuType(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/16 v0, 0x64

    return v0

    :pswitch_1
    const/16 v0, 0x65

    return v0

    :pswitch_2
    const/16 v0, 0x66

    return v0

    :pswitch_3
    const/16 v0, 0x67

    return v0

    :pswitch_4
    const/16 v0, 0x68

    return v0

    :pswitch_5
    const/16 v0, 0x69

    return v0

    :pswitch_6
    const/16 v0, 0x6a

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getDeskKeyguardStatusBarView()Landroid/view/View;
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mKeyguardStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mKeyguardStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getDeskStatusBarContainer()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v3, 0x7f040096

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mKeyguardStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mKeyguardStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v2, 0x7f1301b2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->setTooltip()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mKeyguardStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object v1
.end method

.method public getDeskNotificationIconsArea()Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const v1, 0x7f1301ab

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getDeskQuickSettingViewToggleButton()Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const v1, 0x7f1301ae

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getDeskStatusBarContainer()Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const v1, 0x7f1304cd

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getDeskStatusBarView()Landroid/view/View;
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mDeskStatusBarView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mDeskStatusBarView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getDeskStatusBarContainer()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v3, 0x7f040051

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mDeskStatusBarView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mDeskStatusBarView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

    const v2, 0x7f1301b2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->setTooltip()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mDeskStatusBarView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;

    return-object v1
.end method

.method public getDispatchEventLayer()Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getDispatchEventLayer()Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPkgResCache()Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTaskBarModel()Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    return-object v0
.end method

.method public getTaskBarView()Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    return-object v0
.end method

.method public isAvailableUser(I)Z
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mAvailableUserInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isBindAppsLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindAppsLoaded:Z

    return v0
.end method

.method public isDeskAllNotificationViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeskAllNotificationViewVisible()Z

    move-result v0

    return v0
.end method

.method public isDeskNotificationViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeskNotificationViewVisible()Z

    move-result v0

    return v0
.end method

.method public isKeyboardConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIsKeyboardConnected:Z

    return v0
.end method

.method public isKeyguardState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isKnoxKeyguardState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxKeyguardShown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTaskBarHovered()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isTaskBarHovered()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public launchAppInfo()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->launchAppInfo()V

    return-void
.end method

.method public launchAppNotificationSetting()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->launchAppNotificationSetting()V

    return-void
.end method

.method public launchNotificationSetting()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->launchNotificationSetting()V

    return-void
.end method

.method public notifyTaskBarHoverExited(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->reScheduleAutohide(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public onUserSwitched()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitched to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateAvailableUsers()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->unregisterReceiverAndObserverAsUser()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mDBManager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->onUserSwitched()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->registerReceiverAndObserverAsUser()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->forceResetAndReload()V

    return-void
.end method

.method public registerReceiverAndObserverAsUser()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "registerReceiverAndObserverAsUser"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updatePackageReceiver()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGlobalReceiver:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_1

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGlobalReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGlobalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_2

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mDeXLauncherReceiver:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_3

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v5, "com.sec.intent.action.SHOW_PROMOTION_BANNER_ON_APPS"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "com.sec.intent.action.HIDE_PROMOTION_BANNER_ON_APPS"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "com.sec.intent.action.UNINSTALL_APPLIST"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mDeXLauncherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mDeXLauncherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIconBackgroundChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_4

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v5, "com.samsung.settings.ICON_BACKGROUNDS_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$4;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIconBackgroundChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIconBackgroundChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$5;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$5;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->BADGE_URI(I)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBadgeObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$6;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v5, v6, v8}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method

.method public removeRunningTaskApp(IIILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindTaskBarLoaded:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRunningTaskApp:: This call is blocked!!! TaskBarView is null or bindApps not loaded., taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ComponentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", callingPkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeRunningTaskApp(IIILandroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public removeRunningTaskAppForPkgRemoved(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindTaskBarLoaded:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRunningTaskAppForPkgRemoved:: This call is blocked!!! TaskBarView is null or bindApps not loaded., pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeRunningTaskAppForPkgRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public removeView(Landroid/view/View;)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeView fail. View is null, or not attached!!! view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public sendKeyEventToKnoxDesktopTaskbar(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->sendKeyEventToKnoxDesktopTaskbar(Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setupTaskBarView(Z)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupTaskBarView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    const v1, 0x7f04019c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setup(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Z)V

    return-void
.end method

.method public showDeskContextMenu(IFF)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showContextMenu(IFFLcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public toggleDeskNotificationView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->toggleDeskNotificationView(Z)V

    return-void
.end method

.method public unregisterReceiverAndObserverAsUser()V
    .locals 6

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterReceiverAndObserverAsUser"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPackageReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPackageReceiverMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGlobalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mDeXLauncherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIconBackgroundChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateRunningTaskApp(IIILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindTaskBarLoaded:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRunningTaskApp:: This call is blocked!!! TaskBarView is null or bindApps not loaded., taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ComponentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", callingPkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateRunningTaskApp(IIILandroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateView fail. View is null, or not attached!!! view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
