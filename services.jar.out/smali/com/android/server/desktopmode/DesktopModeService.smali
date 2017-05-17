.class public Lcom/android/server/desktopmode/DesktopModeService;
.super Lcom/samsung/android/desktopmode/IDesktopMode$Stub;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DesktopModeService$1;,
        Lcom/android/server/desktopmode/DesktopModeService$2;,
        Lcom/android/server/desktopmode/DesktopModeService$3;,
        Lcom/android/server/desktopmode/DesktopModeService$4;,
        Lcom/android/server/desktopmode/DesktopModeService$5;,
        Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;,
        Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;,
        Lcom/android/server/desktopmode/DesktopModeService$Enabler;,
        Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;,
        Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;,
        Lcom/android/server/desktopmode/DesktopModeService$TouchpadAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_DEVELOPER_MODE:Ljava/lang/String; = "com.sec.android.app.desktoplauncher.action.DEVELOPER_MODE"

.field private static final ACTION_NOTIFICATION_PRESSED:Ljava/lang/String; = "com.android.server.desktopmode.action.NOTIFICATION_PRESSED"

.field private static final ACTION_TOUCHPAD_NOTIFICATION_PRESSED:Ljava/lang/String; = "com.android.server.desktopmode.action.TOUCHPAD_NOTIFICATION_PRESSED"

.field private static final ALPM_FILE_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/alpm"

.field private static final ALPM_MODE_HLPM_60NIT:I = 0x4

.field private static final ANDROID_INTERNAL_PKGNAME:Ljava/lang/String; = "com.android.internal.app"

.field private static final ARG_DISMISSED_BY_TIMEOUT:I = -0x1

.field private static final ARG_ENTER_DESKTOP_MODE:I = 0x0

.field private static final ARG_EXIT_DESKTOP_MODE:I = 0x1

.field private static final CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/ccic_dock"

.field private static final CCIC_FILE_PATH:Ljava/lang/String; = "/sys/class/switch/ccic_dock/state"

.field private static final DEBUG:Z

.field private static final DELAY_SET_DEFAULT_DISPLAY_ON:I = 0x3e8

.field private static final DELAY_SET_DESKTOP_MODE:I = 0x3e8

.field private static final DELAY_START_LOADING_SCREEN:I = 0x0

.field private static final DELAY_STOP_LOADING_SCREEN:I = 0x0

.field private static final DELAY_UPDATE_STATE:I = 0x7d0

.field private static final DIALOG_TYPE_DISPLAY_UNSUPPORT:I = 0x6

.field private static final DIALOG_TYPE_INSTALL_LAUNCHER:I = 0x3

.field private static final DIALOG_TYPE_LAUNCH_CONFIRMATION_MIRRORING:I = 0x1

.field private static final DIALOG_TYPE_LAUNCH_CONFIRMATION_PRESENTATION:I = 0x2

.field private static final DIALOG_TYPE_NONE:I = 0x0

.field private static final DIALOG_TYPE_PROMOTION:I = 0x4

.field private static final DIALOG_TYPE_TOUCHPAD:I = 0x5

.field private static final DISPLAYPORT_FILE_PATH:Ljava/lang/String; = "/sys/class/dp_sec/dex"

.field private static final DISPLAYPORT_STATE_RECONNECTING:I = 0x2

.field private static final DOCK_STATE_DEX_STATION:I = 0x6e

.field private static final DOCK_STATE_HDMI_ADAPTER:I = 0x6f

.field private static final DOCK_STATE_MULTIPORT_ADAPTER:I = 0x6d

.field private static final DOCK_STATE_NONE:I = 0x0

.field private static final EXTRA_BT_DEVICE_DEEP_SLEEP:I = 0x13

.field private static final EXTRA_DESKTOP_MODE_STATE:Ljava/lang/String; = "com.android.server.desktopmode.extra.DESKTOP_MODE_STATE"

.field private static final EXTRA_DESKTOP_MODE_STATE_DISABLED:I = 0x2

.field private static final EXTRA_DESKTOP_MODE_STATE_ENABLED:I = 0x1

.field private static final EXTRA_DESKTOP_MODE_STATE_UPDATE:I = 0x0

.field private static final FACE_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.bio.face.service"

.field private static final GALAXY_APPS:Ljava/lang/String; = "samsungapps://ProductDetail/"

.field private static final GEAR_VR_PRODUCT_ID:I = 0xa500

.field private static final GEAR_VR_VENDOR_ID:I = 0x4e8

.field private static final IRIS_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.server.iris"

.field private static final KCC_PACKAGE:Ljava/lang/String; = "com.sec.knox.kccagent"

.field private static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field public static final LAUNCH_POLICY_COMPATIBILITY:I = 0x2

.field public static final LAUNCH_POLICY_FREEFORM:I = 0x10

.field public static final LAUNCH_POLICY_GAME:I = 0x8000

.field public static final LAUNCH_POLICY_NOT_SUPPORTED_DECLARED_CATEGORY_HOME:I = 0x80

.field public static final LAUNCH_POLICY_NOT_SUPPORTED_DECLARED_TOUCHSCREEN:I = 0x40

.field public static final LAUNCH_POLICY_NOT_SUPPORTED_LISTED:I = 0x20

.field public static final LAUNCH_POLICY_UNDEFINED:I = 0x1

.field private static final LOW_MEMORY_WARNING_THRESHOLD:J = 0x19000000L

.field public static final MODE_CHANGE_POLICY_KEEP_ALIVE:I = 0x1

.field public static final MODE_CHANGE_POLICY_KILL:I = 0x0

.field private static final MSG_SET_DESKTOP_MODE_INNER:I = 0x0

.field private static final MSG_SHOW_DIALOG:I = 0x1

.field private static final MSG_SHOW_TOAST:I = 0x2

.field private static final MSG_START_LOADING_SCREEN:I = 0x3

.field private static final MSG_STOP_LOADING_SCREEN:I = 0x4

.field private static final MSG_UPDATE_DESKTOP_MODE_STATE:I = 0x6

.field private static final MSG_UPDATE_TOUCHPAD_SCREEN:I = 0x5

.field public static final RESIZE_MODE_CROP_WINDOWS:I = 0x1

.field public static final RESIZE_MODE_FORCE_RESIZEABLE:I = 0x4

.field public static final RESIZE_MODE_RESIZEABLE:I = 0x2

.field public static final RESIZE_MODE_RESIZEABLE_AND_PIPABLE:I = 0x3

.field public static final RESIZE_MODE_UNRESIZEABLE:I = 0x0

.field private static final SETTINGS_HDMI_DEFAULT:I = -0x1

.field private static final SETTINGS_HDMI_DESKTOP_MODE:I = 0x0

.field private static final SETTINGS_HDMI_MIRRORING_MODE:I = 0x1

.field private static final SETTINGS_KEY_DEVELOPER_MODE:Ljava/lang/String; = "developer"

.field private static final SETTINGS_KEY_DEX_ENABLED:Ljava/lang/String; = "dex_enabled_font"

.field private static final SETTINGS_KEY_FIRST_TIME_PROMOTION_DOCK:Ljava/lang/String; = "1st_dock"

.field private static final SETTINGS_KEY_FIRST_TIME_PROMOTION_MOUSE:Ljava/lang/String; = "1st_mouse"

.field private static final SETTINGS_KEY_HDMI:Ljava/lang/String; = "hdmi"

.field private static final SETTINGS_KEY_SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static final SETTINGS_KEY_SCREEN_OFF_TIMEOUT_BACKUP:Ljava/lang/String; = "timeout_b"

.field private static final SETTINGS_KEY_VIRTUAL_KEYBOARD:Ljava/lang/String; = "keyboard"

.field private static final SETTINGS_KEY_VIRTUAL_KEYBOARD_BACKUP:Ljava/lang/String; = "keyboard_b"

.field private static final SYSTEM_PROPERTIES_PERSIST_PREFIX:Ljava/lang/String; = "persist.service.dex."

.field private static final SYSTEM_PROPERTIES_SERVICE_PREFIX:Ljava/lang/String; = "service.dex."

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_CPU_BOOST:I = 0x1388

.field private static final TIMEOUT_LOADING_SCREEN:I = 0x3a98


# instance fields
.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/desktopmode/IDesktopModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedDisplay:Landroid/view/Display;

.field private mConnectedKeyboard:Landroid/view/InputDevice;

.field private mConnectedMouse:Landroid/view/InputDevice;

.field private mContext:Landroid/content/Context;

.field private mCoverAttached:Z

.field private mCoverClosed:Z

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private final mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCoverType:I

.field private mCurrentUiMode:I

.field private mCurrentUserId:I

.field private mCustomDensity:I

.field private mCustomHeight:I

.field private mCustomWidth:I

.field private mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

.field private mDesktopModeState:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogType:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDockState:I

.field private mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field private mEntryExternalDisplayConnected:Z

.field private mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

.field private final mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mIsBTmouseDeepSleep:Z

.field private mIsBiometric:Z

.field private mIsBootComplete:Z

.field private mIsDesktopDockConnected:Z

.field private mIsDesktopMode:Z

.field private mIsDeveloperMode:Z

.field private mIsExternalDisplayConnected:Z

.field private mIsForcedDesktopMode:Z

.field private mIsKccAvailable:Z

.field private mIsKeyboardConnected:Z

.field private mIsKeyboardCoverEnabled:Z

.field private mIsLauncherAvailable:Z

.field private mIsMouseConnected:Z

.field private mIsPolicyDatabaseUpdating:Z

.field private final mLock:Ljava/lang/Object;

.field private mModeChangeLock:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPresentationManager:Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field private mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

.field private mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStopFreezingDisplayCalled:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mToasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private mTopTaskId:I

.field private mTopTaskIntent:Landroid/content/Intent;

.field private mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private mUiModeManager:Landroid/app/IUiModeManager;

.field private mVirtualDeviceManager:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

.field private mWallpaperShown:Z

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBTmouseDeepSleep:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDeveloperMode:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardCoverEnabled:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherAvailable:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/PowerManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/DesktopModePresentationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPresentationManager:Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/am/IActivityManagerServiceBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/wm/IWindowManagerServiceBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/telecom/TelecomManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/desktopmode/DesktopModeService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mToasts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskId:I

    return v0
.end method

.method static synthetic -get28(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverAttached:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverClosed:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverType:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEntryExternalDisplayConnected:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverAttached:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverClosed:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/desktopmode/DesktopModeService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mToasts:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Enabler;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    return-object p1
.end method

.method static synthetic -set12(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWallpaperShown:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/desktopmode/DesktopModeService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverType:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Enabler;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBTmouseDeepSleep:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDeveloperMode:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardCoverEnabled:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherAvailable:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->notifyDesktopModeState(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onBootPhase(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onStartUser(I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onSwitchUser(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleStopLoadingScreenIfPossible()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopModeState(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setAlpmMode(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->isPackageInstalled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModeInner(Z)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/desktopmode/DesktopModeService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModeState(II)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopMode(Z)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopTaskBar(Z)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDisplayPortState(Z)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDockState(I)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setScreenOffTimeout(Z)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setServiceSettings(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setSettingsComponent(Z)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setSettings(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isScoverTypeAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setSettings(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/desktopmode/DesktopModeService;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchPadScreen(ZI)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setVirtualKeyboard(Z)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->showDisplayUnsupportDialogIfNeeded()V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->showHeadsUpNotification()V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startHome()V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->startTopActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopModeState(I)V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->updateOngoingNotification(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateExternalDisplayStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateTouchPadScreen()V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->verifyCurrentState()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateInputDeviceStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getDockState()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->blockDefaultDisplayAndTouchScreen(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->closeLaunchConfirmDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$1;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$2;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$2;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$3;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$3;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$4;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$4;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$5;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$5;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherAvailable:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKccAvailable:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEntryExternalDisplayConnected:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBTmouseDeepSleep:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBiometric:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverAttached:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverClosed:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardCoverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDeveloperMode:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStopFreezingDisplayCalled:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWallpaperShown:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsPolicyDatabaseUpdating:Z

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockState:I

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskId:I

    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverType:I

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPresentationManager:Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mVirtualDeviceManager:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskIntent:Landroid/content/Intent;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedDisplay:Landroid/view/Display;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedMouse:Landroid/view/InputDevice;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedKeyboard:Landroid/view/InputDevice;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTelecomManager:Landroid/telecom/TelecomManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mToasts:Ljava/util/List;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const v1, 0x103012b

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v1, "DEVPATH=/devices/virtual/switch/ccic_dock"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;)V

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.KNOXDESKTOP_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.android.server.desktopmode.action.NOTIFICATION_PRESSED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.android.server.desktopmode.action.TOUCHPAD_NOTIFICATION_PRESSED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.sec.android.app.desktoplauncher.action.DEVELOPER_MODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private blockDefaultDisplayAndTouchScreen(Z)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private cancelToasts()V
    .locals 4

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "cancelToasts()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mToasts:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mToasts:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private changePersonaMode(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->launchPersonaHome(IZ)Z

    return-void
.end method

.method private closeLaunchConfirmDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDialogTypeLaunchConfirm()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeLaunchConfirmDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPresentationManager:Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->dismissExternal(I)V

    :cond_1
    return-void
.end method

.method private createLaunchConfirmationDialog()Landroid/app/AlertDialog;
    .locals 4

    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$14;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DesktopModeService$14;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    new-instance v2, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;->setListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/desktopmode/DesktopModeLaunchConfirmDialog;

    move-result-object v0

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$15;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/DesktopModeService$15;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method

.method private createPromotionView()Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_promotion:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/samsung/android/framework/res/R$id;->promotion_msg:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/framework/res/R$string;->dex_dialog_promotion_msg1:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    sget v3, Lcom/samsung/android/framework/res/R$id;->learn_more:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v3, Lcom/android/server/desktopmode/DesktopModeService$16;

    invoke-direct {v3, p0}, Lcom/android/server/desktopmode/DesktopModeService$16;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object v2
.end method

.method private static dialogTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "DIALOG_TYPE_NONE"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "DIALOG_TYPE_LAUNCH_CONFIRMATION_MIRRORING"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "DIALOG_TYPE_LAUNCH_CONFIRMATION_PRESENTATION"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "DIALOG_TYPE_INSTALL_LAUNCHER"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "DIALOG_TYPE_PROMOTION"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "DIALOG_TYPE_TOUCHPAD"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "DIALOG_TYPE_DISPLAY_UNSUPPORT"

    return-object v0

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

.method private dismissDialog()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dismissDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    return-void
.end method

.method private static dockStateToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "DOCK_STATE_NONE"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "DOCK_STATE_MULTIPORT_ADAPTER"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "DOCK_STATE_DEX_STATION"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "DOCK_STATE_HDMI_ADAPTER"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6d -> :sswitch_1
        0x6e -> :sswitch_2
        0x6f -> :sswitch_3
    .end sparse-switch
.end method

.method private enterDesktopModeByHdmiSettings()V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v1, "hdmi"

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "enterDesktopModeByHdmiSettings   show Presentation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopMode(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDisplayPortState()I
    .locals 9

    const/4 v6, 0x0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "/sys/class/dp_sec/dex"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->read()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    sget-object v5, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed to get DisplayPort state"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    sget-boolean v5, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDisplayPortState(), state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v4

    :catch_1
    move-exception v6

    goto :goto_0

    :catch_2
    move-exception v5

    :goto_2
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    if-eqz v6, :cond_5

    :try_start_6
    throw v6

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v7

    if-nez v6, :cond_4

    move-object v6, v7

    goto :goto_4

    :cond_4
    if-eq v6, v7, :cond_3

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catchall_1
    move-exception v5

    goto :goto_3

    :catchall_2
    move-exception v5

    move-object v2, v3

    goto :goto_3

    :catch_5
    move-exception v5

    move-object v2, v3

    goto :goto_2
.end method

.method private getDockState()I
    .locals 11

    const/4 v8, 0x0

    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "/sys/class/switch/ccic_dock/state"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v7, 0x400

    :try_start_1
    new-array v0, v7, [C

    const/4 v7, 0x0

    const/16 v9, 0x400

    invoke-virtual {v4, v0, v7, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    const/4 v7, 0x0

    invoke-static {v0, v7, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v6

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    :try_start_3
    throw v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    move-object v3, v4

    :goto_1
    sget-object v7, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Failed to get dock state"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    sget-boolean v7, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDockState(), state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->dockStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v6

    :catch_1
    move-exception v8

    goto :goto_0

    :catch_2
    move-exception v7

    :goto_2
    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v8

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    if-eqz v8, :cond_5

    :try_start_6
    throw v8

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v9

    if-nez v8, :cond_4

    move-object v8, v9

    goto :goto_4

    :cond_4
    if-eq v8, v9, :cond_3

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    throw v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catchall_1
    move-exception v7

    goto :goto_3

    :catchall_2
    move-exception v7

    move-object v3, v4

    goto :goto_3

    :catch_5
    move-exception v7

    move-object v3, v4

    goto :goto_2
.end method

.method private getSettings(Ljava/lang/String;I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.service.dex."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSettings(Ljava/lang/String;J)J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.service.dex."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSettings(Ljava/lang/String;Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.service.dex."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private initializeCoverState()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverType:I

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverAttached:Z

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverClosed:Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "mobile_keyboard"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardCoverEnabled:Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_keyboard"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Lcom/android/server/desktopmode/DesktopModeService$6;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/desktopmode/DesktopModeService$6;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Landroid/os/Handler;)V

    const/4 v5, -0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initializeCoverState: attach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverAttached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  closed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverClosed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  mCoverType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  keyboardCover: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardCoverEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private isDesktopDockConnectedOrForced()Z
    .locals 2

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockState:I

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isEngineerBinary()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDesktopModeReady()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "hdmi"

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v1

    if-eq v5, v1, :cond_0

    invoke-direct {p0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemModeReady(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->isScoverAttachedAndClosed(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDesktopModeReady()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherAvailable:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isDesktopModeReady(), launcher not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    sget v3, Lcom/samsung/android/framework/res/R$string;->dex_toast_unavailable_mode:I

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private isDialogTypeLaunchConfirm()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEngineerBinary()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "persist.service.dex.forceuser"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isExternalDisplayConnectedOrForced()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFactoryBinary()Z
    .locals 4

    const-string/jumbo v1, "factory"

    const-string/jumbo v2, "ro.factory.factory_binary"

    const-string/jumbo v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFactoryBinary()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private isKnoxLauncherMode()Z
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v4, "com.android.internal.app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isKnoxLauncherMode(), Knox mode. Return true"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_0
    return v5
.end method

.method private isLockTaskMode()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskModeState()I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPackageInstalled(Ljava/lang/String;Z)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    return v4
.end method

.method private isPolicyDatabaseUpdating()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isLaunchModePolicyAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPolicyDatabaseUpdating()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.desktopmode.action.UPDATE_DATABASE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->createLaunchModePolicyCacheFromDB(Landroid/content/Context;)I

    goto :goto_1
.end method

.method private isProKioskMode()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isScoverAttachedAndClosed(Z)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isScoverAttachedAndClosed  attach="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverAttached:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  closed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverClosed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  keyboardCover="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardCoverEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverAttached:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isScoverTypeAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Clear or keyboard cover is attached... show toast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    sget v4, Lcom/samsung/android/framework/res/R$string;->dex_toast_scover:I

    invoke-virtual {v3, v5, v4, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_1
    return v0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardCoverEnabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    sget v4, Lcom/samsung/android/framework/res/R$string;->dex_toast_keyboard_cover:I

    invoke-virtual {v3, v5, v4, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private isScoverTypeAvailable()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverType:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardCoverEnabled:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverType:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isSystemModeReady(Z)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v13, "emergency_mode"

    const/4 v14, 0x0

    invoke-static {v1, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_2

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v13, "ultra_powersaving_mode"

    const/4 v14, 0x0

    invoke-static {v1, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v12, 0x1

    :goto_1
    const-string/jumbo v13, "low_power"

    const/4 v14, 0x0

    invoke-static {v1, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/desktopmode/DesktopModeService;->isLockTaskMode()Z

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/desktopmode/DesktopModeService;->isProKioskMode()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v13}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v10

    const-string/jumbo v13, "shared_device_status"

    const/4 v14, 0x0

    invoke-static {v1, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_5

    const/4 v11, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    if-eqz v13, :cond_6

    const/4 v3, 0x1

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/desktopmode/DesktopModeService;->isPolicyDatabaseUpdating()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/desktopmode/DesktopModeService;->mIsPolicyDatabaseUpdating:Z

    if-nez v2, :cond_0

    if-eqz v12, :cond_7

    :cond_0
    const/4 v9, 0x0

    :goto_5
    sget-object v13, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isSystemModeReady(), enter="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", emergencyMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", ultraPowerMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", lowPowerMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", kioskMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", proKioskMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", safeMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", kccMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKccAvailable:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", sharedDeviceMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", lockTaskMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", isUnavailableUser="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", mIsPolicyDatabaseUpdating="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/desktopmode/DesktopModeService;->mIsPolicyDatabaseUpdating:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_1

    if-eqz p1, :cond_1

    if-eqz v12, :cond_9

    sget v7, Lcom/samsung/android/framework/res/R$string;->dex_toast_max_power_saving:I

    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const/4 v15, 0x2

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v7, v0}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return v9

    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_7
    if-nez v6, :cond_0

    if-nez v4, :cond_0

    if-nez v8, :cond_0

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKccAvailable:Z

    if-nez v13, :cond_0

    if-nez v11, :cond_0

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/desktopmode/DesktopModeService;->mIsPolicyDatabaseUpdating:Z

    if-eqz v13, :cond_8

    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_9
    if-eqz v6, :cond_a

    sget v7, Lcom/samsung/android/framework/res/R$string;->dex_toast_mid_power_saving:I

    goto :goto_6

    :cond_a
    if-eqz v2, :cond_b

    sget v7, Lcom/samsung/android/framework/res/R$string;->dex_toast_emergency:I

    goto :goto_6

    :cond_b
    if-eqz v10, :cond_c

    sget v7, Lcom/samsung/android/framework/res/R$string;->dex_toast_safe_mode:I

    goto :goto_6

    :cond_c
    sget v7, Lcom/samsung/android/framework/res/R$string;->dex_toast_unavailable_mode:I

    goto :goto_6
.end method

.method private isSystemReady()Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSystemReady(), mModeChangeLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isFactoryBinary()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isUserSetupComplete()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUserSetupComplete()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static modeStateToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x30

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v1, p0, 0xf

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "MODE_DISABLING"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "MODE_DISABLED"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "MODE_ENABLING"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "MODE_ENABLED"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
        0x30 -> :sswitch_3
    .end sparse-switch
.end method

.method private notifyDesktopDockState(Z)V
    .locals 6

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/IDesktopModeCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeCallback;->onDesktopDockConnectionChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-void
.end method

.method private notifyDesktopModeState(Z)V
    .locals 7

    sget-boolean v4, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyDesktopModeState(), enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/IDesktopModeCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeCallback;->onDesktopModeChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    if-eqz p1, :cond_3

    sget-object v4, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    :goto_2
    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->closeLaunchPolicyDB()V

    :cond_2
    return-void

    :cond_3
    sget-object v4, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    goto :goto_2
.end method

.method private onBootPhase(I)V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x1f4

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "com.sec.android.app.desktoplauncher"

    invoke-direct {p0, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->isPackageInstalled(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherAvailable:Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "input"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v2, v3, v6}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v2, v3, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_WINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v2}, Lcom/android/server/SamsungCoreServices;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/IWindowManagerServiceBridge;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    new-instance v2, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPresentationManager:Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    new-instance v2, Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/desktopmode/VirtualDeviceManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mVirtualDeviceManager:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string/jumbo v2, "uimode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    new-instance v2, Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    aget v3, v1, v5

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayWidth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    sget v2, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayHeight:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    sget v2, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayDensity:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_0

    :cond_3
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_1

    iput-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->initializeCoverState()V

    invoke-direct {p0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->setDisplayPortState(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->setSettingsComponent(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->setScreenOffTimeout(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->setVirtualKeyboard(Z)V

    const-string/jumbo v2, "developer"

    invoke-direct {p0, v2, v5}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDeveloperMode:Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    goto :goto_1
.end method

.method private onStartUser(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartUser(), userId="

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

.method private onSwitchUser(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    if-eq v0, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    :cond_1
    return-void
.end method

.method private onUnlockUser(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser(), userId="

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

.method private onUserChanged(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$7;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/desktopmode/DesktopModeService$7;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Landroid/os/Handler;)V

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateExternalDisplayStatus()Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateInputDeviceStatus()Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getDockState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setDockState(I)V

    const/16 v0, 0xbb8

    invoke-direct {p0, v4, v0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopModeStateDelayed(II)V

    goto :goto_0
.end method

.method private overrideNotificationAppName(Landroid/app/Notification$Builder;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.substName"

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/framework/res/R$string;->samsung_dex:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private static powerModeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "POWER_MODE_OFF"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "POWER_MODE_DOZE"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "POWER_MODE_NORMAL"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "POWER_MODE_DOZE_SUSPEND"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private prepareDesktopTaskBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->prepareDesktopTaskBar(Z)V

    :cond_0
    return-void
.end method

.method private removeAllTasks()V
    .locals 0

    return-void
.end method

.method private restorePreviousSizeDensity(I)V
    .locals 15

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->getInitialDisplayProperties(I)[I

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_size_forced"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0x2c

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-lez v12, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ne v0, v12, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v13, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-lez v14, :cond_0

    if-lez v11, :cond_0

    const/4 v0, 0x0

    aput v14, v8, v0

    const/4 v0, 0x1

    aput v11, v8, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_density_forced"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_1

    const/4 v0, 0x2

    aput v7, v8, v0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Restoring display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v8, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, v8, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, v8, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    const/4 v1, 0x0

    aget v2, v8, v1

    const/4 v1, 0x1

    aget v3, v8, v1

    const/4 v1, 0x2

    aget v4, v8, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setForcedDisplaySizeDensity(IIIIZZ)V

    return-void

    :catch_0
    move-exception v10

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to parse previous forced display size"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No previous forced display size. Use default size instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v9

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No previous forced display density. Use default density instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private scheduleStartLoadingScreen(Z)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleStartLoadingScreen(), enter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v4, v5, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private scheduleStopLoadingScreenIfPossible()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleStopLoadingScreenIfPossible(), mStopFreezingDisplayCalled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStopFreezingDisplayCalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mWallpaperShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWallpaperShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mDesktopModeState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->modeStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsDesktopMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mPresentationManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPresentationManager:Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStopFreezingDisplayCalled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWallpaperShown:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPresentationManager:Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->exists(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPresentationManager:Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->exists(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private scheduleUpdateDesktopModeState(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopModeStateDelayed(II)V

    return-void
.end method

.method private scheduleUpdateDesktopModeStateDelayed(II)V
    .locals 4

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setAlpmMode(I)V
    .locals 9

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.DEVICE_POWER"

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAlpmMode(), mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/lcd/panel/alpm"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to set Alpm mode"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void

    :catch_1
    move-exception v5

    goto :goto_0

    :catch_2
    move-exception v4

    :goto_2
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    if-eqz v5, :cond_5

    :try_start_6
    throw v5

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v6

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_4

    :cond_4
    if-eq v5, v6, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catchall_1
    move-exception v4

    goto :goto_3

    :catchall_2
    move-exception v4

    move-object v2, v3

    goto :goto_3

    :catch_5
    move-exception v4

    move-object v2, v3

    goto :goto_2
.end method

.method private setComponentFromList(II)V
    .locals 12

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v1, v3, v6

    const/16 v9, 0x2f

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    :cond_0
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v4, "com.sec.android.app.desktoplauncher"

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, p2, v10}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {v9, v10, p2, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v9, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Failed to toggle components"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    return-void
.end method

.method private setCustomConfigurations(Z)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setDesktopMode(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUiMode:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setForcedDisplaySizeDensity(IIIIZZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->restorePreviousSizeDensity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to set custom configurations"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setDefaultDisplayPowerMode(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultDisplayPowerMode(), mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->powerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->setDefaultDisplayPowerMode(I)V

    return-void
.end method

.method private setDesktopMode(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopMode(), desktopMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemModeReady(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eq v0, p1, :cond_5

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEntryExternalDisplayConnected:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleStartLoadingScreen(Z)V

    :cond_5
    return-void
.end method

.method private setDesktopModeInner(Z)V
    .locals 5

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDesktopModeInner(), enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isKnoxLauncherMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->changePersonaMode(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->cancelToasts()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->updateOngoingNotification(Z)V

    if-eqz p1, :cond_2

    const/16 v0, 0x20

    :goto_0
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModeState(II)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->removeAllTasks()V

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setSettingsComponent(Z)V

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModetoSF(Z)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->stopLockTaskMode()V

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->prepareDesktopTaskBar(Z)V

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStopFreezingDisplayCalled:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWallpaperShown:Z

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setCustomConfigurations(Z)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    sget v3, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_description:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1
.end method

.method private setDesktopModeState(II)V
    .locals 3

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopModeState(), mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeService;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int v0, p1, p2

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    return-void
.end method

.method private setDesktopModetoSF(Z)V
    .locals 6

    const-string/jumbo v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/16 v3, 0x44f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to set desktop mode for SF"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setDesktopTaskBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setDesktopTaskBar(Z)V

    :cond_0
    return-void
.end method

.method private setDisplayPortState(Z)V
    .locals 2

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$8;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setDockState(I)V
    .locals 4

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDockState(), state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->dockStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockState:I

    :goto_0
    const/16 v1, 0x6e

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->notifyDesktopDockState(Z)V

    :cond_1
    return-void

    :pswitch_0
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockState:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setForcedDesktopMode(ZLjava/io/PrintWriter;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADB command received; setForcedDesktopMode(), enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Forced DeX mode is already turned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "on"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v0, "off"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Turning "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_4

    const-string/jumbo v0, "on"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " forced DeX mode..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "This simulates the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_5

    const-string/jumbo v0, "connection"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " of an external display."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopModeState(I)V

    return-void

    :cond_4
    const-string/jumbo v0, "off"

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "disconnection"

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private setScreenOffTimeout(Z)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, -0x2

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffTimeout(), enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_off_timeout"

    const/16 v5, 0x7530

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffTimeout(), Backing up current value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v3, "timeout_b"

    invoke-direct {p0, v3, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setSettings(Ljava/lang/String;I)V

    const-string/jumbo v3, "timeout"

    const v4, 0x927c0

    invoke-direct {p0, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v1

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffTimeout(), Setting Desktop mode value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_off_timeout"

    invoke-static {v3, v4, v1, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string/jumbo v3, "timeout_b"

    invoke-direct {p0, v3, v7}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffTimeout(), Restoring backed up value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_off_timeout"

    invoke-static {v3, v4, v0, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v3, "timeout_b"

    invoke-direct {p0, v3, v7}, Lcom/android/server/desktopmode/DesktopModeService;->setSettings(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setServiceSettings(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service.dex."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSettings(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.service.dex."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSettings(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.service.dex."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSettings(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.service.dex."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSettingsComponent(Z)V
    .locals 4

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSettingsComponent(), enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v2, Lcom/samsung/android/framework/res/R$array;->components_desktop_mode:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setComponentFromList(II)V

    sget v0, Lcom/samsung/android/framework/res/R$array;->components_normal_mode:I

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setComponentFromList(II)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private setTouchPadScreen(ZI)V
    .locals 0

    return-void
.end method

.method private setVirtualKeyboard(Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVirtualKeyboard(), enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVirtualKeyboard(), Backing up current value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v3, "keyboard_b"

    invoke-direct {p0, v3, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setSettings(Ljava/lang/String;I)V

    const-string/jumbo v3, "keyboard"

    invoke-direct {p0, v3, v7}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v1

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVirtualKeyboard(), Setting Desktop mode value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string/jumbo v3, "keyboard_b"

    invoke-direct {p0, v3, v6}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_3

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVirtualKeyboard(), Restoring backed up value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "keyboard_b"

    invoke-direct {p0, v3, v6}, Lcom/android/server/desktopmode/DesktopModeService;->setSettings(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 14

    const/4 v13, 0x0

    const v12, 0x104000a

    const/4 v11, 0x1

    const/4 v10, 0x0

    sget-boolean v7, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showDialog(), dialogType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->dialogTypeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  currentType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    invoke-static {v9}, Lcom/android/server/desktopmode/DesktopModeService;->dialogTypeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    if-ne v7, p1, :cond_1

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v10, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    iput v13, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    :cond_2
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPresentationManager:Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->showInternal(I)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->createLaunchConfirmationDialog()Landroid/app/AlertDialog;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    const/4 v7, 0x6

    if-ne p1, v7, :cond_4

    const v7, 0x102000b

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_display_error_text_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_3
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/framework/res/R$dimen;->dex_dialog_display_error_text_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextSize(F)V

    :cond_4
    if-ne p1, v11, :cond_5

    const/16 v7, 0x10

    invoke-direct {p0, v7, v11}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModeState(II)V

    :cond_5
    return-void

    :pswitch_1
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPresentationManager:Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    invoke-virtual {v7, v11}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->showExternal(I)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->createLaunchConfirmationDialog()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    new-instance v4, Lcom/android/server/desktopmode/DesktopModeService$12;

    invoke-direct {v4, p0}, Lcom/android/server/desktopmode/DesktopModeService$12;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v8, Lcom/samsung/android/framework/res/R$string;->dex_dialog_install:I

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/samsung/android/framework/res/R$string;->dex_dialog_install_positive:I

    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x1040000

    invoke-virtual {v7, v8, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget v9, Lcom/samsung/android/framework/res/R$style;->DefaultPopupStyle:I

    invoke-direct {v7, v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->createPromotionView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/server/desktopmode/DesktopModeService$13;

    invoke-direct {v8, p0}, Lcom/android/server/desktopmode/DesktopModeService$13;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    invoke-virtual {v7, v12, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_4
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/server/desktopmode/DesktopModeService$TouchpadAdapter;

    invoke-direct {v8, p0, v10}, Lcom/android/server/desktopmode/DesktopModeService$TouchpadAdapter;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$TouchpadAdapter;)V

    invoke-virtual {v7, v8, v10}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_dialog_gestures:I

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v12, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_5
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget v8, Lcom/samsung/android/framework/res/R$string;->dex_dialog_display_unsupport_title:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct {v2, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v5, v2, v13, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/samsung/android/framework/res/R$string;->dex_dialog_display_unsupport_msg:I

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v12, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showDisplayUnsupportDialogIfNeeded()V
    .locals 6

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    const/16 v2, 0x280

    if-gt v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    const/16 v2, 0x1e0

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private showHeadsUpNotification()V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x1

    sget-boolean v4, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "showHeadsUpNotification()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.server.desktopmode.action.NOTIFICATION_PRESSED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v4, v7, v5, v7, v6}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/framework/res/R$string;->samsung_dex:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/framework/res/R$string;->dex_hun_hdmi_settings:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/samsung/android/framework/res/R$drawable;->stat_notify_desktop_mode:I

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$Action$Builder;

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const v7, 0x1040148

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    sget-object v5, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->overrideNotificationAppName(Landroid/app/Notification$Builder;)V

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v5, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    sget v6, Lcom/samsung/android/framework/res/R$string;->dex_hun_hdmi_settings:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showTouchpadNotification()V
    .locals 0

    return-void
.end method

.method private startHome()V
    .locals 3

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startHome()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private startTopActivity(Landroid/content/Intent;I)V
    .locals 0

    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "STATE_UNDEFINED"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "STATE_WELCOME_DIALOG_SHOWN"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "STATE_LOADING_SCREEN_SHOWN"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "STATE_BEFORE_CONFIG_CHANGE"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "STATE_CONFIG_CHANGE_STARTED"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "STATE_CONFIG_CHANGE_FINISHED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateDesktopModeState(I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDesktopModeState(), arg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mModeChangeLock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->updateOngoingNotification(Z)V

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeReady()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->enterDesktopModeByHdmiSettings()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$11;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DesktopModeService$11;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    if-nez v0, :cond_9

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->isScoverAttachedAndClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_5
    move v0, v2

    :goto_1
    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog()V

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->isScoverAttachedAndClosed(Z)Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherAvailable:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "hdmi"

    const/4 v3, -0x1

    invoke-direct {p0, v0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_3

    :cond_8
    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopMode(Z)V

    goto :goto_0

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherAvailable:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_b

    move v0, v1

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateExternalDisplayStatus()Z
    .locals 10

    const/4 v9, 0x2

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v5, 0x0

    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v2, v3, v5

    invoke-virtual {v2}, Landroid/view/Display;->getType()I

    move-result v4

    if-eq v4, v9, :cond_0

    const/4 v7, 0x5

    if-ne v4, v7, :cond_5

    invoke-virtual {v2}, Landroid/view/Display;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "com.displaylink"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_0
    sget-boolean v5, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Connected external display="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedDisplay:Landroid/view/Display;

    :cond_2
    if-nez v0, :cond_3

    iget-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getDisplayPortState()I

    move-result v5

    if-ne v5, v9, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-eq v5, v0, :cond_6

    const/4 v1, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    sget-boolean v5, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsExternalDisplayConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateInputDeviceStatus()Z
    .locals 14

    const/4 v9, 0x0

    sget-boolean v8, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Call updateInputDevice()"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v8}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    const/4 v6, 0x0

    const/4 v5, 0x0

    array-length v10, v1

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_8

    aget v0, v1, v8

    iget-object v11, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v11, v0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v2}, Landroid/view/InputDevice;->getSources()I

    move-result v11

    and-int/lit8 v11, v11, 0xe

    if-eqz v11, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    const/4 v3, 0x1

    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/view/InputDevice;->getProductId()I

    move-result v11

    const v12, 0xa500

    if-ne v11, v12, :cond_4

    invoke-virtual {v2}, Landroid/view/InputDevice;->getVendorId()I

    move-result v11

    const/16 v12, 0x4e8

    if-ne v11, v12, :cond_4

    :cond_1
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    or-int/2addr v6, v4

    or-int/2addr v5, v3

    if-eqz v4, :cond_6

    sget-boolean v11, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v11, :cond_5

    sget-object v11, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Connected mouse="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedMouse:Landroid/view/InputDevice;

    :cond_6
    if-eqz v3, :cond_1

    sget-boolean v11, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v11, :cond_7

    sget-object v11, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Connected keyboard="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedKeyboard:Landroid/view/InputDevice;

    goto :goto_3

    :cond_8
    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    if-eq v8, v6, :cond_d

    const/4 v7, 0x1

    :goto_4
    iput-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBTmouseDeepSleep:Z

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    sget-boolean v8, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v8, :cond_9

    sget-object v8, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Enter the BT mouse deep sleep routine in updateInputDeviceStatus()"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBTmouseDeepSleep:Z

    :cond_a
    sget-boolean v8, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    invoke-interface {v8, v9}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->updateMouseConnectedForDesktopMode(Z)V

    :cond_b
    sget-boolean v8, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v8, :cond_c

    sget-object v8, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mIsMouseConnected="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " mIsKeyboardConnected="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v7

    :cond_d
    const/4 v7, 0x0

    goto :goto_4
.end method

.method private updateOngoingNotification(Z)V
    .locals 11

    const/4 v7, -0x1

    const/4 v10, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherAvailable:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "hdmi"

    invoke-direct {p0, v6, v7}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v7, :cond_0

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.KNOXDESKTOP_STATE_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "com.android.server.desktopmode.extra.DESKTOP_MODE_STATE"

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_dex_title:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_dex_content:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_dex_action:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/high16 v9, 0x10000000

    invoke-static {v6, v8, v4, v9, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/samsung/android/framework/res/R$drawable;->stat_notify_desktop_mode:I

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v7, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Landroid/app/Notification$Action$Builder;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v0, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v6

    sget-object v7, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->overrideNotificationAppName(Landroid/app/Notification$Builder;)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v7, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    sget v8, Lcom/samsung/android/framework/res/R$string;->samsung_dex:I

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v7, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    sget v8, Lcom/samsung/android/framework/res/R$string;->samsung_dex:I

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void

    :cond_1
    const-string/jumbo v6, "com.android.server.desktopmode.extra.DESKTOP_MODE_STATE"

    invoke-virtual {v4, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_mirroring_title:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_mirroring_content:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/framework/res/R$string;->dex_ongoing_mirroring_action:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private updateTouchPadScreen()V
    .locals 0

    return-void
.end method

.method private verifyCurrentState()V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v5, :cond_7

    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    if-ne v2, v6, :cond_6

    const/4 v1, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eq v1, v2, :cond_5

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "verifyCurrentState(), Something is wrong! config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mIsDesktopMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v1, :cond_8

    const/16 v2, 0x30

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModeState(II)V

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setSettingsComponent(Z)V

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModetoSF(Z)V

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setDisplayPortState(Z)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->stopLockTaskMode()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->prepareDesktopTaskBar(Z)V

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopTaskBar(Z)V

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->notifyDesktopModeState(Z)V

    if-nez v1, :cond_2

    iput-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iput-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setScreenOffTimeout(Z)V

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setVirtualKeyboard(Z)V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnected()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    if-eqz v2, :cond_9

    :cond_3
    move v2, v3

    :goto_2
    invoke-direct {p0, v2, v4}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchPadScreen(ZI)V

    :goto_3
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    if-eqz v1, :cond_4

    move v4, v5

    :cond_4
    const/4 v3, -0x1

    invoke-interface {v2, v4, v3}, Lcom/android/server/am/IActivityManagerServiceBridge;->moveAllTasksToStack(II)V

    :cond_5
    return-void

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_0

    :cond_8
    const/16 v2, 0x10

    goto :goto_1

    :cond_9
    move v2, v4

    goto :goto_2

    :cond_a
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    if-eqz v2, :cond_c

    :cond_b
    move v2, v3

    :goto_4
    invoke-direct {p0, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchPadScreen(ZI)V

    goto :goto_3

    :cond_c
    move v2, v4

    goto :goto_4
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15

    iget-object v10, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Permission Denial: can\'t dump DesktopModeService from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v10, v0

    if-nez v10, :cond_2

    :cond_1
    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v10, "  "

    const/16 v11, 0x78

    move-object/from16 v0, p2

    invoke-direct {v6, v0, v10, v11}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    iget-object v11, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    const-string/jumbo v10, "DesktopModeService (dumpsys desktopmode):"

    invoke-virtual {v6, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string/jumbo v10, "\nmIsDesktopMode"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmDockState"

    iget v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockState:I

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->dockStateToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmIsDesktopDockConnected"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmIsForcedDesktopMode"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmDesktopModeState"

    iget v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->modeStateToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmModeChangeLock"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmDialogType"

    iget v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->dialogTypeToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmIsLauncherAvailable"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherAvailable:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmIsKccAvailable"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKccAvailable:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmIsPolicyDatabaseUpdating"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsPolicyDatabaseUpdating:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmIsExternalDisplayConnected"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmEntryExternalDisplayConnected"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEntryExternalDisplayConnected:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmConnectedDisplay"

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedDisplay:Landroid/view/Display;

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmIsMouseConnected"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmIsBTmouseDeepSleep"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBTmouseDeepSleep:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmConnectedMouse"

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedMouse:Landroid/view/InputDevice;

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmIsKeyboardConnected"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmConnectedKeyboard"

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedKeyboard:Landroid/view/InputDevice;

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmCoverAttached"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverAttached:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmCoverType"

    iget v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverType:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmCoverClosed"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverClosed:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmIsKeyboardCoverEnabled"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardCoverEnabled:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmIsBiometric"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBiometric:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmIsDeveloperMode"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDeveloperMode:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmIsBootComplete"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmStopFreezingDisplayCalled"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStopFreezingDisplayCalled:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmWallpaperShown"

    iget-boolean v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWallpaperShown:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmTopTaskId"

    iget v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmTopTaskIntent"

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskIntent:Landroid/content/Intent;

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmCallbacks"

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v10, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    const-string/jumbo v10, "count"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    iget-object v10, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v10, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/IDesktopModeCallback;

    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v10, "-a"

    const/4 v11, 0x0

    aget-object v11, p3, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    sget-boolean v10, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    aget-object v3, p3, v10

    const-string/jumbo v10, "toggle"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p2

    invoke-direct {p0, v10, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setForcedDesktopMode(ZLjava/io/PrintWriter;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string/jumbo v10, "\nmDefaultDisplayEnabler"

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmTouchScreenEnabler"

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmToasts"

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mToasts:Ljava/util/List;

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmCurrentUserId"

    iget v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmCustomWidth"

    iget v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmCustomHeight"

    iget v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmCustomDensity"

    iget v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmPresentationManager"

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPresentationManager:Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nmVirtualDeviceManager"

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mVirtualDeviceManager:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nConfiguration"

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nDISPLAY_SIZE_FORCED"

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "display_size_forced"

    invoke-static {v12, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nDISPLAY_DENSITY_FORCED"

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "display_density_forced"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v10, "\npersist.service.dex.hdmi"

    const-string/jumbo v12, "persist.service.dex.hdmi"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\npersist.service.dex.1st_mouse"

    const-string/jumbo v12, "persist.service.dex.1st_mouse"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\npersist.service.dex.1st_dock"

    const-string/jumbo v12, "persist.service.dex.1st_dock"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\npersist.service.dex.developer"

    const-string/jumbo v12, "persist.service.dex.developer"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\npersist.service.dex.keyboard"

    const-string/jumbo v12, "persist.service.dex.keyboard"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\npersist.service.dex.keyboard_b"

    const-string/jumbo v12, "persist.service.dex.keyboard_b"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nSHOW_IME_WITH_HARD_KEYBOARD"

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "show_ime_with_hard_keyboard"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\npersist.service.dex.timeout"

    const-string/jumbo v12, "persist.service.dex.timeout"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\npersist.service.dex.timeout_b"

    const-string/jumbo v12, "persist.service.dex.timeout_b"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nSCREEN_OFF_TIMEOUT"

    iget-object v12, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "screen_off_timeout"

    const/4 v14, -0x2

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "\nservice.dex.dex_enabled_font"

    const-string/jumbo v12, "service.dex.dex_enabled_font"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    goto/16 :goto_2

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_5
    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v10, "on"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v10, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setForcedDesktopMode(ZLjava/io/PrintWriter;)V

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v10, "off"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v10, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setForcedDesktopMode(ZLjava/io/PrintWriter;)V

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v10, "dblist"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->getLaunchModePolicyList(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v7

    if-nez v7, :cond_9

    const-string/jumbo v10, "Launcher Policy List is null."

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v10, "white_list"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "black_list"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "********** WHITE_LIST[ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ]**********"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    array-length v11, v9

    :goto_3
    if-ge v10, v11, :cond_a

    aget-object v8, v9, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "********** BLACK_LIST[ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ]**********"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    array-length v11, v1

    :goto_4
    if-ge v10, v11, :cond_3

    aget-object v8, v1, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown argument: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; USAGE: [on|off|toggle|dblist]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public getCurrentUiMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUiMode:I

    return v0
.end method

.method public getDesktopModeKillPolicy()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->getDesktopModeKillPolicy()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDesktopModeState()I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    return v0
.end method

.method public getLaunchModePolicyList()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->getLaunchModePolicyList(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I
    .locals 12

    const/16 v11, 0x80

    const/16 v10, 0x40

    const/16 v9, 0x10

    const/4 v8, 0x2

    sget-boolean v6, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getLaunchPolicyForPackage() start."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    const-string/jumbo v6, "getLaunchPolicyForPackage"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDeveloperMode:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, ", mIsDeveloperMode is true, return "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v9

    :cond_2
    if-nez p1, :cond_4

    const-string/jumbo v6, ", appInfo is null. return "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v8

    :cond_4
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_5

    if-eqz p2, :cond_5

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_5
    if-nez v3, :cond_7

    const-string/jumbo v6, ", packageName is null. return "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v8

    :cond_7
    const-string/jumbo v6, "("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->getLaunchModePolicyFromCache(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, ", getLaunchModePolicyFromCache:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v6, 0x20

    if-ne v5, v6, :cond_9

    const-string/jumbo v6, ", check BL, return "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v6, :cond_8

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v5

    :cond_9
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string/jumbo v6, ", cuid:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_e

    const-string/jumbo v6, ", activityInfo not null"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v2}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isTouchScreenDeclared(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string/jumbo v6, ", isTouchScreenDeclared true, return "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v6, :cond_a

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v10

    :cond_b
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v2}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isCategoryHomeDeclared(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string/jumbo v6, ", isCategoryHomeDeclared true, return "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v6, :cond_c

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v11

    :cond_d
    invoke-static {v3}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isGame(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string/jumbo v6, ", isGame true"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :cond_e
    if-nez p2, :cond_10

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, p1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isDexSupported(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string/jumbo v6, ", isDexSupported true, return "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v6, :cond_f

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v9

    :cond_10
    invoke-static {p1, p2}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->getResizeableMode(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v4

    const-string/jumbo v6, ", getResizeableMode:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v6, "com.microsoft.office.powerpoint"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v4, -0x1

    const-string/jumbo v6, ", Except ppt resizemode=-1"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    const/4 v6, -0x1

    if-le v4, v6, :cond_14

    move v5, v4

    if-eqz v0, :cond_12

    const v6, 0x8000

    or-int/2addr v5, v6

    :cond_12
    const-string/jumbo v6, ", resizeMode>-1, return "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v6, :cond_13

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return v5

    :cond_14
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, p1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isPreloadedAppResizeable(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/16 v5, 0x10

    if-eqz v0, :cond_15

    const v5, 0x8010

    :cond_15
    const-string/jumbo v6, ", isPreloadedAppResizeable true, return "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v6, :cond_16

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return v5

    :cond_17
    if-eqz v0, :cond_18

    const v6, 0x8000

    or-int/2addr v5, v6

    :cond_18
    const-string/jumbo v6, ", return "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v6, :cond_19

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return v5
.end method

.method public getLaunchPolicyRunnable(Landroid/content/pm/ApplicationInfo;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getLaunchPolicyRunnable"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->getLaunchModePolicyFromCache(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    return v5

    :cond_1
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isTouchScreenDeclared(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    return v5

    :cond_2
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isCategoryHomeDeclared(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    return v5

    :cond_3
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isNotSupportedListed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v5

    :cond_4
    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLaunchPolicyRunnable ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v6
.end method

.method public getModeChangePolicy(Ljava/lang/String;)I
    .locals 4

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getModeChangePolicy ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "developer"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isKeepAlive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isKeepWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getModeChangePolicy, ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method

.method public isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z
    .locals 4

    const/4 v3, 0x0

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    :cond_0
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isConfigurationChangedFromDeX true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    and-int/lit8 v1, v1, 0x30

    if-eqz v1, :cond_0

    :cond_5
    return v3
.end method

.method public isDefaultDisplayBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesktopDockConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    return v0
.end method

.method public isDesktopMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    return v0
.end method

.method public isDesktopModeAvailable()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeAvailableEx(ZZ)Z

    move-result v0

    return v0
.end method

.method public isDesktopModeAvailableEx(ZZ)Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeReady()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "hdmi"

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemModeReady(Z)Z

    move-result v0

    :goto_0
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDesktopModeAvailable(checkExternalDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", checkDesktopDock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesktopModeEnablingOrEnabled()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesktopModeForPreparing()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesktopModeLoadingScreenShowing()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isExternalDisplayConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    return v0
.end method

.method public isKeepWhiteList(Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKeepWhiteList ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isKeepWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isModeChangePending()Z
    .locals 2

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$10;

    invoke-direct {v2, p0, v0}, Lcom/android/server/desktopmode/DesktopModeService$10;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopFreezingDisplay()V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopFreezingDisplay(), mDesktopModeState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->modeStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsDesktopMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mPresentationManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPresentationManager:Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPresentationManager:Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStopFreezingDisplayCalled:Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleStopLoadingScreenIfPossible()V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    goto :goto_0
.end method

.method public registerStateCallback(Lcom/samsung/android/desktopmode/IDesktopModeCallback;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDefaultDisplayOn(ZLjava/lang/String;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Only the system may call setDefaultDisplayOn()"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callerPkgName must not be null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultDisplayOn(), on="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", callerPkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mDefaultDisplayEnabler="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setDefaultDisplayOn(): External display is not connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    if-eqz p1, :cond_a

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-nez v2, :cond_9

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v2, p2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService$Enabler;-><init>(Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    new-instance v3, Lcom/android/server/desktopmode/DesktopModeService$9;

    invoke-direct {v3, p0}, Lcom/android/server/desktopmode/DesktopModeService$9;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_0
    const-string/jumbo v2, "com.samsung.android.server.iris"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "com.samsung.android.bio.face.service"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBiometric:Z

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v2, v7}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendEmptyMessage(I)Z

    :cond_8
    :goto_1
    return-void

    :cond_9
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultDisplayOn(), Screen already enabled by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v2, v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->tag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iput-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-direct {p0, v6}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    :cond_b
    :goto_2
    const-string/jumbo v2, "com.samsung.android.server.iris"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "com.samsung.android.bio.face.service"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_c
    iput-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBiometric:Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v2, v7}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_d
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultDisplayOn(), Tag not matched; REQUESTED: {tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ACQUIRING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_e
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setDefaultDisplayOn(), Screen already disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setForcedDesktopMode(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setForcedDesktopMode(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public setHdmiSettings(Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v3, "hdmi"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setSettings(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setDisplayPortState(Z)V

    if-eqz p1, :cond_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopModeState(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setSystemService(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/server/input/InputManagerService;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/server/input/InputManagerService;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/android/server/am/IActivityManagerServiceBridge;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/am/IActivityManagerServiceBridge;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    goto :goto_0
.end method

.method public setTouchScreenOn(ZLjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Only the system may call setTouchScreenOn()"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callerPkgName must not be null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTouchScreenOn(), on="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", callerPkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mTouchScreenEnabler="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setTouchScreenOn(): External display is not connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-nez v2, :cond_7

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v2, p2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService$Enabler;-><init>(Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-class v3, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5, v5, v3}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTouchScreenOn(), TSP already enabled by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v2, v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->tag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iput-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-class v3, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v5, v5, v3}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    goto :goto_0

    :cond_9
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTouchScreenOn(), Tag not matched; REQUESTED: {tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ACQUIRING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setTouchScreenOn(), TSP already disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public unregisterStateCallback(Lcom/samsung/android/desktopmode/IDesktopModeCallback;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
